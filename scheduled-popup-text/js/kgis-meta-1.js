// =========================
// 自動產 Meta
// =========================
(function () {
  const META = window.KGI_PAGE_META || {};
  if (!META.slug || !META.title || !META.description) {
    console.warn("KGI_PAGE_META 未設定完整，略過 meta 自動注入");
    return;
  }

  // 依活動站的固定路徑規則來組 URL
  const baseEventHost = "https://event.kgi.com.tw";
  const pagePath = `/news/event/${META.slug}/index.html`;
  const pageUrl = `${baseEventHost}${pagePath}`;
  const ogImage = `${baseEventHost}/news/event/${META.slug}/images/${META.image}`;

  // 設定 <title>
  document.title = META.title;

  // 小工具：找不到就建立 <meta>，然後塞屬性
  function setMeta(selector, attrs) {
    let el = document.querySelector(selector);
    if (!el) {
      el = document.createElement("meta");
      document.head.appendChild(el);
    }
    Object.keys(attrs).forEach((key) => {
      el.setAttribute(key, attrs[key]);
    });
  }

  // 一般 description
  setMeta('meta[name="description"]', {
    name: "description",
    content: META.description,
  });

  // Title 系列
  setMeta('meta[property="og:title"]', {
    property: "og:title",
    content: META.ogTitle,
  });

  /*setMeta('meta[name="twitter:title"]', {
    name: "twitter:title",
    content: META.ogTitle,
  });*/

  // Description 系列
  setMeta('meta[property="og:description"]', {
    property: "og:description",
    content: META.ogDescription,
  });

  /*setMeta('meta[name="twitter:description"]', {
    name: "twitter:description",
    content: META.ogDescription,
  });*/

  // URL / image
  setMeta('meta[property="og:url"]', {
    property: "og:url",
    content: pageUrl,
  });
	

  setMeta('meta[property="og:image"]', {
    property: "og:image",
    content: ogImage,
  });
	
  /*setMeta('meta[name="twitter:image"]', {
    name: "twitter:image",
    content: ogImage,
  });*/

  // JSON-LD：Organization
  const orgLd = {
    "@context": "http://schema.org",
    "@type": "Organization",
    "name": "凱基證券",
    "url": "https://www.kgi.com.tw/",
    "logo": "https://www.kgi.com.tw/zh-tw/-/media/images/kgis/header/logo-kgis.svg",
    "mainEntityOfPage": {
      "@type": "WebPage",
      "@id": pageUrl,
    },
    "image": [ogImage],
  };

  // JSON-LD：Breadcrumb
  const breadcrumbLd = {
    "@context": "http://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [
      {
        "@type": "ListItem",
        "position": 1,
        "item": "https://www.kgi.com.tw/",
        "name": "首頁",
      },
      {
        "@type": "ListItem",
        "position": 2,
        "item": pageUrl,
        "name": META.title,
      },
    ],
  };
	
	
// 設定 canonical
(function () {
  let link = document.querySelector('link[rel="canonical"]');
  if (!link) {
    link = document.createElement("link");
    link.setAttribute("rel", "canonical");
    document.head.appendChild(link);
  }
  link.setAttribute("href", pageUrl);
})();	
	

  function injectJsonLd(id, data) {
    let script = document.getElementById(id);
    if (!script) {
      script = document.createElement("script");
      script.type = "application/ld+json";
      script.id = id;
      document.head.appendChild(script);
    }
    script.text = JSON.stringify(data);
  }

  injectJsonLd("ld-org", orgLd);
  injectJsonLd("ld-breadcrumb", breadcrumbLd);
})();



// =========================
// 自動產 FAQ Schema（FAQPage）
// =========================

(function () {
  function buildFaqSchema() {
    const qaItems = document.querySelectorAll(".qa-list");
    if (!qaItems || qaItems.length === 0) return false;

    const faqEntities = [];

    qaItems.forEach((item) => {
      const questionEl = item.querySelector(".qa-list-tit");
      const answerEl = item.querySelector(".qa-list-content");
      if (!questionEl || !answerEl) return;

      const questionText = questionEl.innerText.trim().replace(/^Q[:：]\s*/, "");
      const answerHtml = answerEl.innerHTML.trim();

      faqEntities.push({
        "@type": "Question",
        name: questionText,
        acceptedAnswer: {
          "@type": "Answer",
          text: answerEl.innerText.trim()
        },
      });
    });

    const faqJson = {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      mainEntity: faqEntities,
    };

    let script = document.getElementById("ld-faq");
    if (!script) {
      script = document.createElement("script");
      script.type = "application/ld+json";
      script.id = "ld-faq";
      document.head.appendChild(script);
    }
    script.text = JSON.stringify(faqJson);

    console.log("✅ FAQ Schema 已自動生成：", faqJson);
    return true;
  }

  function waitForQaThenBuild() {
    if (buildFaqSchema()) return;
    const obs = new MutationObserver(() => {
      if (buildFaqSchema()) obs.disconnect();
    });
    obs.observe(document.body, { childList: true, subtree: true });
    setTimeout(() => obs.disconnect(), 3000);
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", waitForQaThenBuild);
  } else {
    waitForQaThenBuild();
  }
  window.KGI_buildFaqSchema = buildFaqSchema;
})();
