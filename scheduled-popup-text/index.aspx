<%@ Page Language="C#" AutoEventWireup="true" CodeFile="../event_setting/rewards_2026Q4/index.aspx.cs"
  Inherits="event_rewards2026Q4" %>
  <!DOCTYPE html>
  <html lang="zh-Hant-TW">

  <head>
    <!-- 載入公司共用追蹤碼 -->
    <script>
      let cacheID = new Date().getMilliseconds();
      let Login_InternalScript = document.createElement('script');
      Login_InternalScript.src = 'https://event.kgi.com.tw/news/event/commonResources/js/trackingCode.js?uid=' + cacheID;
      document.head.appendChild(Login_InternalScript);
    </script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="theme-color" content="#081c43">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <title>享投資選凱基，證券開戶投資優惠三重送－凱基證券</title>
    <meta name="description"
      content="凱基證券開戶優惠年末限時加碼！開戶即享500元蝦皮全站優惠券，交易再送月月700元手續費抵用金，滿額再抽 iPhone 18 Pro及蝦皮萬元購物金。線上開戶超方便，台美股今天開戶，明天立即開始投資。">
    <meta property="og:type" content="website">
    <meta property="og:title" content="享投資選凱基，證券開戶投資優惠三重送－凱基證券">
    <meta property="og:description"
      content="凱基證券開戶優惠年末限時加碼！開戶即享500元蝦皮全站優惠券，交易再送月月700元手續費抵用金，滿額再抽 iPhone 18 Pro及蝦皮萬元購物金。線上開戶超方便，台美股今天開戶，明天立即開始投資。">
    <meta property="og:url" content="https://event.kgi.com.tw/news/event/rewards/index.aspx">
    <meta property="og:image" content="https://event.kgi.com.tw/news/event/rewards/images/fb.jpg?v=20260930">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <link rel="canonical" href="https://event.kgi.com.tw/news/event/rewards/index.aspx">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link href="https://www.kgi.com.tw/media/assets/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
    <link href="https://www.kgi.com.tw/media/assets/favicon-32x32.png" rel="icon" sizes="32x32" type="image/png">
    <link href="https://www.kgi.com.tw/media/assets/favicon-16x16.png" rel="icon" sizes="16x16" type="image/png">

    <script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": "凱基證券",
      "url": "https://www.kgi.com.tw/",
      "logo": "https://www.kgi.com.tw/zh-tw/-/media/images/kgis/header/logo-kgis.svg",
      "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "https://event.kgi.com.tw/news/event/rewards/index.aspx"
      },
      "image": ["https://event.kgi.com.tw/news/event/rewards/images/fb.jpg?v=20260930"]
    }
  </script>

    <script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [
        {
          "@type": "ListItem",
          "position": 1,
          "item": "https://www.kgi.com.tw/",
          "name": "首頁"
        },
        {
          "@type": "ListItem",
          "position": 2,
          "item": "https://event.kgi.com.tw/news/event/rewards/index.aspx",
          "name": "享投資選凱基，證券開戶投資優惠三重送－凱基證券"
        }
      ]
    }
  </script>

    <meta name="apple-itunes-app" content="app-id=1473914290">
    <meta name="google-play-app" content="app-id=tw.com.kgi.ecapp">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@400;500;600;700;900&family=Roboto:wght@400;500;600;700;900&display=swap"
      rel="stylesheet">
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://event.kgi.com.tw/news/event/commonResources/css/slick.css">
    <link rel="stylesheet" href="css/style.css?v=20261001v3">
    <!--客服-->
    <link rel="stylesheet" href="https://event.kgi.com.tw/news/event/commonResources/css/chatbot.css?v=20261001">
    <script src="https://event.kgi.com.tw/news/event/commonResources/js/chatbot.js?v=20261001"></script>

    <script src="https://event.kgi.com.tw/news/event/commonResources/js/vue-v3.js"></script>
    <script src="https://event.kgi.com.tw/news/event/commonResources/js/jquery-v3.4.min.js"></script>
    <script src="https://event.kgi.com.tw/news/event/commonResources/js/slick.min.js"></script>
    <script src="js/kgis-meta-1.js"></script>
    <!--kgis start-->
    <script>
      // 讓外部 JS 能抓到 ASP.NET 動態 ClientID
      const CHECKBOX_ID = "<%= Checkbox_a.ClientID %>";
    </script>
    <script type="text/javascript">
      var flag = true;
      $(function () {
        var _thisUrl = window.location.toString(); //取得當前網址;
        var _protocol = window.location.protocol;
        var _port = window.location.port;
        if (_protocol.indexOf("https") == -1 && window.location.hostname.toLowerCase().indexOf('localhost') == -1) {
          var idx = _thisUrl.toLowerCase().indexOf('http:');
          window.location.href = "https:" + _thisUrl.substring(idx + 5);
          flag = false;
          return;
        }
      });

      function funPopMessage() {

        document.getElementById('myModal').style.display = 'flex';
        txtID.focus();
        return false;

      }


      function funCloseMessage() {

        document.getElementById('myModal').style.display = 'none';
        return false;

      }


      function checkID() {

        var txtQ3 = $('#txtID').val().toUpperCase();

        var tab = "ABCDEFGHJKLMNPQRSTUVXYWZIO";
        var A1 = new Array(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3);
        var A2 = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5);
        var Mx = new Array(9, 8, 7, 6, 5, 4, 3, 2, 1, 1);


        if (txtQ3 === '' || txtQ3.length != 10) {
          return false;
        }
        var i = tab.indexOf(txtQ3.charAt(0));
        var sum = A1[i] + A2[i] * 9;
        for (i = 1; i < 10; i++) {
          var v = parseInt(txtQ3.charAt(i));
          if (isNaN(v)) {
            return false;
          };
          sum = sum + v * Mx[i];
        }

        if (sum % 10 != 0) {
          return false;
        };
        return true;
      };



      function VerifyCheck() {

        if (!checkID()) {
          alert('身份證字號格式錯誤！');
          txtID.focus(); // 回到輸入框
          return false;
        }


        var checkbox = document.getElementById('<%= Checkbox_a.ClientID %>');


        // 檢查是否為空


        if (!checkbox.checked) {
          alert("請閱讀並同意[運用個人資料告知書​]");
          checkbox.focus();
          return false;
        }
        return true; // 通過驗證
      }

    </script>
    <!--kgis end-->

    <style>
      .AccountBtn2,
      .register-fields>.AccountBtn2 {
        font-family: "Noto Sans TC", Arial, sans-serif;
        font-size: 20px;
        font-weight: 600;
        display: block;
        color: #fff;
        width: 100%;
        min-width: 250px;
        height: 63px;
        line-height: 63px;
        text-align: center;
        box-sizing: border-box;
        padding: 0 28px;
        border: 0;
        border-radius: 0;
        background-color: #f04a38;
        background-image: linear-gradient(to right, #FFAB6A 0%, #f04a38 51%, #FFAB6A 100%);
        background-position: 0% center;
        background-repeat: no-repeat;
        background-size: 200% auto;
        overflow: hidden;
        position: relative;
        transition: background-position .5s;
        -webkit-appearance: none;
        appearance: none;
        cursor: pointer;
      }

      .AccountBtn2:hover,
      .register-fields>.AccountBtn2:hover {
        background-position: 100% center;
      }

      #myModal {
        align-items: center;
        justify-content: center;
      }

      #myModal .modal-container {
        margin-left: auto;
        margin-right: auto;
      }



      /* 禁用狀態統一樣式 */
      .btn-disabled {
        font-family: Arial, "Noto Serif SC", "Noto Sans TC", sans-serif;
        font-size: 20px;
        display: block;
        color: #fff;
        line-height: 50px;
        border-radius: 30px;
        text-align: center;
        box-sizing: border-box;
        padding: 0px 42px;
        overflow: hidden;
        position: relative;
        border: 2px solid #fff;
        margin-left: auto;
        margin-right: auto;
        white-space: nowrap;
        background-image: none;
        background: gray !important;
        cursor: default !important;
        opacity: 1 !important;
        /* 避免某些瀏覽器自動變淡 */
        overflow: visible !important;
        pointer-events: none;
        /* 不可點擊（支援所有元素） */

        box-shadow: 0 0px 0px rgba(251, 100, 33, 0.32);
      }

      @media screen and (max-width: 767px) {

        .AccountBtn2,
        .register-fields>.AccountBtn2,
        .btn-disabled {
          max-width: none;
          width: 100%;
          box-sizing: border-box;
          font-size: 18px;
          height: 63px;
          line-height: 63px;
          padding: 0px 20px;
        }
      }


      @media screen and (max-width: 460px) {
        .btn-disabled {
          max-width: 80%;
          margin: auto;
        }
      }
    </style>
  </head>

  <body>
    <form method="post" runat="server">
      <div id="q4-app" v-cloak>
        <div id="top"></div>
        <div class="header clearfix">
          <div class="header-logo">
            <a class="header-logo-kgi" href="https://www.kgi.com.tw/zh-tw/" title="凱基證券" target="_blank">
              <img src="images/logo.svg" alt="凱基證券">
            </a>

            <div class="header-logo-dividingLine"></div>

            <a class="header-logo-shopee">
              <img src="images/shopee_logo_tw.png" alt="shopee">
            </a>
          </div>

          <nav class="navBar" :class="{show: menuOpen}" aria-label="活動導覽">
            <ul>
              <li v-for="item in navItems" :key="item.id || item.url">
                <a :href="item.url || '#' + item.id" :title="item.label" :target="item.url ? '_blank' : null"
                  :rel="item.url ? 'noopener noreferrer' : null" @click="closeMenu">
                  {{ item.label }}
                </a>
              </li>
            </ul>
          </nav>

          <div class="menuBtn" :class="{active: menuOpen}" role="button" tabindex="0" :aria-expanded="menuOpen"
            aria-label="開啟選單" @click="menuOpen = !menuOpen" @keydown.enter="menuOpen = !menuOpen">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>

        <main>
          <section class="hero" aria-label="享投資選凱基活動主視覺">
            <div class="hero-stage">
              <div class="hero-visual-clip">
                <img class="hero-chart" src="images/hero-chart.png" alt="" aria-hidden="true">
                <picture class="hero-orange-picture">
                  <source media="(max-width:700px)" srcset="images/bg_orange_sp.png?v=20260916">
                  <img class="hero-orange" src="images/bg_orange.png" alt="" aria-hidden="true">
                </picture>
                <div class="hero-copy">
                  <img class="hero-title-image" src="images/hero-title01.png" alt="選擇凱基，開始累積；享投資 選凱基">
                  <a href="https://eoa.kgi.com.tw/OOA/index.aspx?Source=E260801" target="_blank"
                    rel="noopener noreferrer" id="AccountBtn_K">
                    立即開戶
                    <span class="hero-button-arrow" aria-hidden="true">›</span>
                  </a>
                </div>

                <div class="hero-art" aria-hidden="true">
                  <img class="hero-composite" src="images/ddd.png" alt="">
                  <img class="hero-ribbon" src="images/hero-ribbon.png" alt="">
                </div>

                <img class="hero-float hero-present" src="images/hero-present.png" alt="">
                <img class="hero-float hero-coin1" src="images/hero-coin1.png" alt="">
                <img class="hero-float hero-coin2" src="images/hero-coin2.png" alt="">
                <img class="hero-float hero-coin3" src="images/hero-coin3.png" alt="">
                <img class="hero-float hero-wallet" src="images/hero-wallet.png" alt="">
              </div>

              <div class="hero-offers">
                <article>
                  <h3>台美股新戶送</h3><strong><span class="hero-offer-number">500</span><small>元</small></strong>
                  <p>蝦皮全站優惠券</p>
                </article>
                <article>
                  <h3>交易月月加碼</h3><strong><span class="hero-offer-number">700</span><small>元</small></strong>
                  <p>手續費抵用金</p>
                </article>
                <article>
                  <h3>交易滿額再抽</h3><strong>iPhone18 Pro</strong>
                  <p>及蝦皮萬元購物金</p>
                </article>
              </div>
            </div>
          </section>

          <div class="content-surface">
            <div class="trade-background-swipe" aria-hidden="true"></div>
            <div class="open-account-background-swipe" aria-hidden="true"></div>
            <section class="intro section" id="overview">
              <div class="container center headline-block">
                <h1><small style="line-height: 2.3em">2026/10/1-2026/12/31</small><br>
                  證券開戶超優惠，台美股開戶送500元蝦皮全站優惠券</h1>
                <h2>交易月月加碼700元股票交易手續費抵用金，滿額再抽iPhone18 Pro及蝦皮萬元購物金</h2>
              </div>
            </section>

            <section class="register first-gift section" id="gifts">
              <span class="parallax-ball parallax-ball-blue parallax-ball-first" data-move-x="1520" data-move-y="480"
                aria-hidden="true"></span>
              <span class="parallax-ball parallax-ball-orange parallax-ball-second" data-move-x="-940"
                data-move-y="-1460" aria-hidden="true"></span>
              <div class="container">
                <div class="first-gift-heading center">
                  <h2>享投資選凱基，開戶優惠加碼送</h2>
                  <p>凱基證券開戶優惠，好禮3重送</p>
                  <h3>第1重－證券開戶禮</h3>
                </div>

                <div class="opening-offers">
                  <article>
                    <h4>新開戶＋登錄＋綁定</h4>
                    <strong><b>$</b>500</strong>
                    <h5>蝦皮全站優惠券</h5>
                    <p>證券開戶完成之次月15號前透過凱基證券LINE官方帳號發送，請先綁定「凱基證券樂活投資人」LINE官方帳號（<a href="#redeem">如何綁定</a>）。</p>
                    <small>＊2026/12/31前完成開戶+登錄+綁定</small>
                  </article>
                  <article>
                    <h4>新開戶＋登錄＋交易</h4>
                    <strong><b>月月 $</b>700</strong>
                    <h5>手續費抵用金</h5>
                    <p>不限金額交易月月700元股票交易手續費抵用金（限用於台股電子交易，每月上限700元，回饋時間為2026.11-2027.08，詳情請見<a href="#notice">注意事項</a>）。
                    </p>
                    <small>＊不限金額交易含台美股、定期定額</small>
                    <small>＊2026/12/31前完成開戶+登錄</small>
                    <small>＊2027/7/31前完成首筆交易並扣款成功</small>
                  </article>
                </div>

                <div class="register-card first-gift-form reveal-up is-revealed" id="register"
                  style="--reveal-delay: 260ms;">
                  <div class="register-copy center reveal-up is-revealed" style="--reveal-delay: 390ms;">
                    <h3 class="reveal-up is-revealed" style="--reveal-delay: 0ms;">立即登錄</h3>
                    <h4>即可獲得優惠資格</h4>
                    <p>500元蝦皮全站優惠券及<span class="register-mobile-line">月月700元手續費抵用金一次打包</span></p>
                  </div>
                  <div class="register-fields">
                    <label for="pid">請輸入身分證字號</label>
                    <!--<input id="pid" v-model.trim="pid" inputmode="text" maxlength="10" placeholder="請輸入身分證字號"
                  autocomplete="off">-->
                    <asp:TextBox ID="txtID" name="txtID" runat="server" maxlength="10" spellcheck="false"
                      placeholder="請輸入身分證字號" data-val-required="請輸入身分證字號" autocomplete="off"
                      style="text-transform:uppercase"></asp:TextBox>
                    <label class="agree" for="checkbox_a" style="cursor: pointer;">
                      <!--<input type="checkbox" v-model="agreed">-->
                      <asp:CheckBox runat="server" ID="Checkbox_a" Checked="true"></asp:CheckBox>
                      <span>我同意運用 <a href="https://www.kgi.com.tw/zh-tw/others/statement-of-use-of-personal-information"
                          target="_blank"><span style="color:#3b3b3b">個人資料告知書</span></a></span>
                    </label>
                    <!--<button class="primary-button" type="submit" id="SigninBtn_S">立即登錄</button>
                <p class="form-message" role="status">{{ formMessage }}</p>-->
                    <asp:Button ID="SigninBtn_S" runat="server" ClientIDMode="Static"
                      OnClientClick="return VerifyCheck();" CssClass="AccountBtn2" Text="立即登錄 "
                      OnClick="btnSend_Click" />

                    <asp:HiddenField ID="HFSRC" runat="server" />
                    <asp:HiddenField ID="HFPROD" runat="server" />
                  </div>
                </div>
              </div>
            </section>

            <section class="trade section" id="trade">
              <div class="container center">
                <div class="trade-heading">
                  <h3>第2重－交易禮</h3>
                  <p class="gift-audience-note">不限新舊戶，綁定LINE官方帳號</p>
                  <div class="trade-entry-flow">
                    <div class="trade-threshold-list">
                      <div><img src="images/TW_flag.svg" alt="台灣">
                        <p><span>交易台股</span><b>每滿5萬元</b></p>
                      </div>
                      <div><img src="images/USA_flag.svg" alt="美國">
                        <p><span>交易美股</span><b>每滿1,500美元</b></p>
                      </div>
                    </div>
                    <strong class="draw-chance"><b>抽獎機會 <span>＋1</span></b></strong>
                  </div>
                </div>

                <div class="prize-grid">
                  <article><strong><small>$</small>10,000</strong>
                    <p>蝦皮全站優惠券</p><em>10名</em>
                  </article>
                  <article class="feature"><strong>iPhone 18 Pro</strong>
                    <p>市價$44,900</p><em>3名</em>
                  </article>
                  <article><strong><small>$</small>3,000</strong>
                    <p>蝦皮全站優惠券</p><em>50名</em>
                  </article>
                </div>

                <a class="ticket-button button-link"
                  href="https://h5webtrade.kgieworld.com.tw/ServicesWeb/Auth/Login?orign=P&amp;applytype=86&amp;stcok=1&amp;clear=Y"
                  target="_blank" rel="nofollow me noopener noreferrer">查看我的抽獎券</a>
                <p class="trade-line-note">＊蝦皮全站優惠券將透過凱基證券 LINE 官方帳號發送，請先於2026/12/31前綁定「凱基證券樂活投資人」LINE 官方帳號（<a
                    href="#redeem">如何綁定</a>）。
                </p>
              </div>
            </section>

            <section class="digital section" id="digital">
              <span class="parallax-ball parallax-ball-green parallax-ball-third" data-move-x="700" data-move-y="520"
                aria-hidden="true"></span>
              <span class="parallax-ball parallax-ball-orange parallax-ball-fourth" data-move-x="-720"
                data-move-y="-500" aria-hidden="true"></span>
              <!--<span class="parallax-ball parallax-ball-orange parallax-ball-fifth" data-move-x="580" data-move-y="450"
            aria-hidden="true"></span>-->
              <div class="container digital-layout">
                <div class="digital-phone">
                  <div class="phone-float">
                    <img src="images/iphone_app.png" alt="隨身e策略 APP 畫面">
                  </div>
                </div>
                <div class="digital-content">
                  <h3 class="digital-section-title">第3重－投資APP數位禮</h3>
                  <p class="gift-audience-note">不限新舊戶，綁定LINE官方帳號</p>
                  <h2>我的投資，我做主</h2>
                  <p class="lead">隨身e策略 APP，掌握投資更全面</p>
                  <p class="digital-action">活動期間，登入隨身e策略 APP，抽獎機會+1</p>
                  <article class="digital-prize-card">
                    <strong><small>$</small>1,000</strong>
                    <span>超商好禮即享券</span>
                    <em>5名</em>
                  </article>
                  <p class="digital-line-note">＊超商好禮即享券將透過凱基證券 LINE 官方帳號發送，請先於2026/12/31前綁定「凱基證券樂活投資人」LINE 官方帳號（<a
                      href="#redeem">如何綁定</a>）。</p>
                </div>
              </div>
            </section>

            <section class="fees section" id="fees">
              <span class="parallax-ball parallax-ball-orange parallax-ball-fees" data-move-x="640" data-move-y="-440"
                aria-hidden="true"></span>
              <span class="parallax-ball parallax-ball-blue parallax-ball-intro" data-move-x="680" data-move-y="480"
                aria-hidden="true"></span>
              <div class="container center">
                <h2>股票交易手續費省更多，投資更輕鬆</h2>
                <div class="fee-grid">
                  <article>
                    <img class="fee-illustration" src="images/fees_01.svg" alt="台股新戶手續費優惠">
                    <h3>台股新戶</h3>
                    <p><strong>手續費優惠</strong></p>
                    <a href="javascript:void(0);" onclick="KGIChatbot.open();">點此了解 &gt;</a>
                  </article>
                  <article>
                    <img class="fee-illustration" src="images/fees_02.svg" alt="美股手續費優惠">
                    <h3>美股手續費超有感</h3>
                    <p>免申請立即擁有</p>
                    <p><strong>手續費驚喜價?</strong></p>
                    <a href="javascript:void(0);" onclick="KGIChatbot.open();">點此了解 &gt;</a>
                  </article>
                  <article>
                    <img class="fee-illustration" src="images/fees_03.svg" alt="台美股定期定額優惠">
                    <h3>台美股定期定額</h3>
                    <p><strong>均一價</strong></p>
                    <a href="javascript:void(0);" onclick="KGIChatbot.open();">點此了解 &gt;</a>
                  </article>
                </div>
              </div>
            </section>

            <section class="open-account section" id="open">
              <div class="container center">
                <p class="eyebrow">今天開戶，明天開始投資</p>
                <h2>台美股線上開戶</h2>
                <h3>開戶前請準備</h3>
                <div class="prep-grid">
                  <article><span>01</span>
                    <img class="open-account-gif" src="images/open-account01.gif" alt="準備身分證與第二證件">
                    <h4>身分證+健保卡或駕照</h4>
                    <p>(證件需有照片)</p>
                  </article>
                  <article><span>02</span>
                    <img class="open-account-gif" src="images/open-account02.gif" alt="進行身分驗證">
                    <h4>手持證件半身照</h4>
                    <p>或銀行身分認證</p>
                  </article>
                  <article><span>03</span>
                    <img class="open-account-gif" src="images/open-account03.gif" alt="準備本人銀行帳戶">
                    <h4>銀行本人帳戶</h4>
                  </article>
                </div><a class="primary-button button-link" href="https://eoa.kgi.com.tw/OOA/index.aspx?Source=E260801"
                  target="_blank" id="AccountBtn_S" rel="noopener noreferrer">立即開戶</a>
              </div>
            </section>

            <section class="ranking section" id="ranking">
              <span class="parallax-ball parallax-ball-green parallax-ball-ranking" data-move-x="760" data-move-y="460"
                aria-hidden="true"></span>
              <div class="container">
                <div class="center ranking-heading">
                  <p class="eyebrow">凱基證券投資人買什麼？</p>
                  <h2>定期定額熱門排行</h2>
                  <p>0050定期定額、VOO 定期定額怎麼買？</p>
                </div>
                <div class="ranking-tabs market-tabs" role="tablist" aria-label="市場切換">
                  <button type="button" role="tab" :aria-selected="rankingTab==='tw'"
                    :class="{active:rankingTab==='tw'}" @click="rankingTab='tw'"><img src="images/TW_flag.svg"
                      alt="">台股</button>
                  <button type="button" role="tab" :aria-selected="rankingTab==='us'"
                    :class="{active:rankingTab==='us'}" @click="rankingTab='us'"><img src="images/USA_flag.svg"
                      alt="">美股</button>
                </div>
                <div class="ranking-shell">
                  <div class="ranking-table" role="tabpanel">
                    <div class="ranking-row ranking-head"><span>排名</span><span>標的</span><span>特色</span></div>
                    <div class="ranking-row" v-for="(stock,i) in rankings[rankingTab]" :key="stock.code">
                      <strong>{{i+1}}</strong>
                      <div class="ranking-target">
                        <div><b>{{stock.code}}</b><small v-if="stock.type">{{stock.type}}</small></div>
                        <span>{{stock.name}}</span>
                      </div>
                      <p>{{stock.copy}}</p>
                    </div>
                  </div>
                  <p class="fine">
                    <span>＊資料來源：凱基證券7月{{rankingTab==='tw'?'台股':'美股'}}定期定額扣款人數。</span>
                    <span>＊本資料僅為市場歷史數值統計概況說明，非投資績效表現之預測。投資人因不同時間進場，將有不同之投資績效，過去績效表現不代表未來績效之保證。</span>
                  </p>
                </div>
              </div>
            </section>

            <section class="redeem teaching section" id="redeem">
              <span class="parallax-ball parallax-ball-orange parallax-ball-redeem" data-move-x="660" data-move-y="-520"
                aria-hidden="true"></span>
              <div class="container center">
                <h2 class="tit-type1" title="開戶優惠禮券怎麼領">開戶優惠禮券怎麼領</h2>
                <div class="tab teaching-tabs">
                  <ul>
                    <li v-for="(tab,i) in redeemTabs" :key="tab" :class="{active:redeemTab===i}"
                      @click="redeemTab=i;redeemStep=0">{{tab}}</li>
                  </ul>
                </div>
                <div class="tab-content teaching-content" :class="{'is-dragging':teachingDragStart!==null}"
                  @pointerdown="startTeachingDrag" @pointermove="moveTeachingDrag" @pointerup="endTeachingDrag"
                  @pointercancel="cancelTeachingDrag">
                  <button class="teaching-arrow teaching-prev" type="button" aria-label="上一個步驟"
                    @click="changeRedeemStep(-1)"></button>
                  <article class="teaching-slide" v-for="(step,i) in teachingSlides[redeemTab]" :key="redeemTab+'-'+i"
                    v-show="redeemStep===i"
                    :style="{transform:teachingDragStart!==null?'translateX('+teachingDragX+'px)':''}"
                    @dragstart.prevent>
                    <div class="teaching-copy"
                      :class="{'teaching-copy-center':redeemTab>0 && i===0,'teaching-copy-black':redeemTab===2 && i===3}">
                      <span class="cardItem-tit">{{teachingNumbers[i]}}</span>
                      <h3 v-if="step.title">{{step.title}}</h3>
                      <div v-if="step.customType==='shopee-voucher'" class="teaching-shopee-copy">
                        <p>於畫面中貼上蝦皮商城禮券兌換序號 (兌換序號<br>
                          請以手機APP兌換) *兌換後請於效期內使用完畢</p>
                        <a href="https://help.shopee.tw/portal/4/article/79904-[%E5%84%AA%E6%83%A0%E5%88%B8%E8%88%87%E5%84%AA%E6%83%A0%E4%BB%A3%E7%A2%BC]-%E5%A6%82%E4%BD%95%E7%8D%B2%E5%BE%97%E5%84%AA%E6%83%A0%E5%88%B8%EF%BC%9F?src=S_113&amp;prod=P_160&amp;_gl=1*3vadvf*_gcl_aw*R0NMLjE3ODkwMzA0OTkuQ2p3S0NBandxb25WQmhBNEVpd0E5d1lKM2NlT2dxeTJmVWVySmc0R3pwRnRJczZYOUE0ZnBKSlFZLS1YQTRhakUxbmE5Y3ZxYTFZX3ZSb0NuLXNRQXZEX0J3RQ..*_gcl_au*NDU1NzYxMTk3LjE3ODIxODM3NzY.*_ga*MTg5NTkwMjgwMS4xNzgyMTgzNzc2*_ga_K1BGJY4WFR*czE3ODkwMzA0ODEkbzE2MyRnMSR0MTc4OTAzMDQ5OCRqNDMkbDAkaDA."
                          target="_blank" tabindex="0" rel="nofollow me noopener noreferrer">*如何儲存優惠券</a>
                      </div>
                      <div v-else-if="step.sections" class="teaching-copy-sections">
                        <div v-for="section in step.sections" :key="section.label">
                          <strong>{{section.label}}</strong>
                          <p>{{section.copy}}</p>
                        </div>
                      </div>
                      <p v-else-if="step.copyLink">
                        <a class="teaching-copy-link" :href="step.copyLink" target="_blank"
                          rel="noopener noreferrer">{{step.copy}}</a>
                      </p>
                      <p v-else>{{step.copy}}</p>
                    </div>
                    <div class="teaching-media" :class="{'teaching-media-multiple':step.images.length>1}">
                      <picture v-for="(image,index) in step.images" :key="image.src">
                        <source v-if="image.mobile" media="(max-width: 767px)" :srcset="image.mobile">
                        <img :src="image.src" :alt="image.alt" class="teaching-img">
                      </picture>
                    </div>
                  </article>
                  <button class="teaching-arrow teaching-next" type="button" aria-label="下一個步驟"
                    @click="changeRedeemStep(1)"></button>
                  <div class="teaching-dots" aria-label="教學步驟">
                    <button v-for="(step,i) in teachingSlides[redeemTab]" :key="step.title" type="button"
                      :class="{active:redeemStep===i}" :aria-label="`前往步驟 ${i+1}`" @click="redeemStep=i"></button>
                  </div>
                </div>
              </div>
            </section>

            <section class="qa section" id="qa">
              <span class="parallax-ball parallax-ball-blue parallax-ball-qa" data-move-x="700" data-move-y="500"
                aria-hidden="true"></span>
              <span class="parallax-ball parallax-ball-green parallax-ball-qa-two" data-move-x="-560" data-move-y="360"
                aria-hidden="true"></span>
              <span class="parallax-ball parallax-ball-orange parallax-ball-qa-three" data-move-x="480"
                data-move-y="-420" aria-hidden="true"></span>
              <span class="parallax-ball parallax-ball-blue parallax-ball-qa-four" data-move-x="-420" data-move-y="-300"
                aria-hidden="true"></span>
              <div class="container">
                <div class="center">
                  <p class="eyebrow">常見問題</p>
                  <h2>Q&amp;A</h2>
                </div>
                <div class="qa-area">
                  <div class="qa-list accordion" :class="{active:openFaq.includes(i)}" v-for="(item,i) in faqs"
                    :key="item.q">
                    <h4 class="qa-list-tit" :title="item.q" role="button" tabindex="0"
                      :aria-expanded="openFaq.includes(i)" @click="toggleFaq(i)" @keydown.enter.prevent="toggleFaq(i)"
                      @keydown.space.prevent="toggleFaq(i)">
                      <span>Q{{i+1}}</span>{{item.q}}<i></i>
                    </h4>
                    <div class="qa-list-content accordion-answer" :class="{'is-open':openFaq.includes(i)}">
                      <div>
                        <p>{{item.a}}<a v-if="item.link" :href="item.link" target="_blank"
                            rel="nofollow me noopener noreferrer">{{item.linkText}}</a>{{item.afterLink || ''}}</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>

            <section class="notice section" id="notice">
              <span class="parallax-ball parallax-ball-green parallax-ball-notice" data-move-x="620" data-move-y="-460"
                aria-hidden="true"></span>
              <div class="container"><button class="notice-title" type="button" :aria-expanded="noticeOpen"
                  @click="noticeOpen=!noticeOpen"><span>注意事項</span><i></i></button>
                <div class="notice-answer" :class="{'is-open':noticeOpen}">
                  <div class="notice-content">
                    <p class="notice-main-number" data-number="1."><strong>活動期間：</strong>2026/10/01 起至 2026/12/31</p>
                    <h3 class="notice-main-number" data-number="2.">好禮三重送</h3>

                    <h4>【證券開戶禮】</h4>
                    <ol class="notice-paren-list">
                      <li>適用凱基證券台股及複委託新戶之本國籍自然人（設籍台灣、澎湖、金門、馬祖，含98員工戶，不含法人，不含凱基人壽轉介客戶（含凱基人壽員工）），且領獎時須為凱基證券有效帳戶始符合贈獎資格。
                      </li>
                      <li>台股及複委託新戶定義：從未於凱基證券開立台股、複委託帳戶或銷戶逾12個月者，獲獎資格以開戶完成日作為計算基準。</li>
                      <li>活動採登錄制，客戶須於2026/12/31前登錄並綁定「凱基證券樂活投資人」LINE官方帳號方符合活動資格。</li>
                      <li>本活動不與其他開戶優惠活動併用，參加者如有資格不符、違反本活動規定事項、活動期間內先銷戶再開戶、開戶後又銷戶或違約交割者，本公司保有取消活動優惠之權利。</li>
                    </ol>

                    <h4 class="notice-paren-heading" data-number="(5)">500元蝦皮全站優惠券：</h4>
                    <ul class="notice-bullet-list">
                      <li>
                        「500元蝦皮全站優惠券」為電子票券（下稱商品禮券），商品禮券將透過「凱基證券樂活投資人」LINE官方帳號發送，客戶須於2026/12/31前登錄及綁定「凱基證券樂活投資人」LINE官方帳號，始符合開戶禮獲獎資格。本公司將於2026年10月31日、11月30日、12月31日檢核符合獲獎資格客戶，符合資格之次月15日前，透過「凱基證券樂活投資人」LINE官方帳號向符合資格客戶寄發獲獎通知，且於收到獲獎通知前不可封鎖或解除「凱基證券樂活投資人」LINE官方帳號好友，始可收到凱基證券獲獎通知，若因封鎖或解除致無法收到得獎訊息而無法獲得獎勵，恕不補發且不得要求轉換或轉讓獎項。
                      </li>
                      <li>本商品禮券一經兌換無法更改或取消兌換，恕不可兌換等值現金。獲獎資格以開戶完成日作為計算基準。</li>
                      <li>消費滿額501元始能使用「500元蝦皮全站優惠券」，運費不計入滿額門檻，每人活動期間最多享1次現折優惠，結帳時請確認是否已享有折扣，恕不得要求事後補償回饋。</li>
                      <li>需於結帳時輸入折扣碼，若無成功使用即無法享有折扣，其代表您購買的品項不適用本活動優惠。</li>
                      <li>每次結帳僅能使用一組折扣代碼優惠，不得與其他優惠方案合併使用。</li>
                      <li>
                        此優惠由蝦皮購物提供，兌換及使用期限為6個月，蝦皮購物保有取消訂單、更改條款與終止本活動保留法律追訴權之權利。舉例：10月符合活動資格者，使用期限至2027/05/15，11月符合活動資格者，使用期限至2027/06/15，12月符合活動資格者，使用期限至2027/07/15。
                      </li>
                      <li>折扣代碼不適用於服務票券類商品、特定類別、特定店家與特定Dyson／Apple／Android／小米系列商品，適用與否悉依實際訂單結帳頁面為準。</li>
                      <li>若取消訂單或辦理退貨，僅退還購物實際支付的金額，已折抵金額將無法歸還。</li>
                    </ul>

                    <h4 class="notice-paren-heading" data-number="(6)">台股電子交易手續費抵用金月月700元</h4>
                    <ul class="notice-bullet-list">
                      <li>手續費抵用金將於您於2026/12/31前「完成本活動開戶及登錄」並於2027/07/31前「完成首筆交易」扣款成功的次月起至2027年8月底，月月回饋到您的「交割帳戶」或「e財庫」。
                      </li>
                      <li>
                        例如小明2026/10/15新開戶並完成活動頁「登錄」與「交易」，手續費抵用金回饋期間為2026/11至2027/08，手續費抵用金將於2026/12至2027/09回饋於您的帳上；小麗於2026/10/15新開戶並完成活動頁「登錄」，並於2027/01/12完成首筆交易，手續費抵用金回饋期間為2027/2至2027/08，手續費抵用金將於2027/3至2027/09回饋於您的帳上。
                      </li>
                      <li>「完成首筆交易」不限單筆或定期定額、不限台／美股、不限金額、標的，但信託平台交易不適用。</li>
                      <li>手續費抵用金僅限折抵台股電子交易，不含定期定額交易。每月最高可抵手續費700元，如手續費未達700元則依原手續費金額回饋，手續費為0元則無回饋。</li>
                      <li>
                        例如：小明於2026年10月22日完成首筆交易成功扣款，自2026年11月起至2027年8月連續10個月，每月皆享台股電子交易手續費抵用金回饋：假設小明10月實付手續費為500元，則11月將回饋500元抵用金；小明10月實付手續費為1,000元，則11月將回饋700元抵用金；小明10月實付手續費為0元，則11月無回饋抵用金<a
                          href="https://chatservice.kgi.com.tw/Webhook/?q=%E4%BA%AB%E6%8A%95%E8%B3%87%E9%81%B8%E5%87%B1%E5%9F%BA%E6%89%8B%E7%BA%8C%E8%B2%BB%E6%8A%B5%E7%94%A8%E9%87%91"
                          target="_blank" title="了解可折抵範圍">（了解可折抵範圍）</a>。
                      </li>
                      <li>月交易量計算期間為當月1號至30號（31號），次月底前將抵用金回饋到e財庫或交割帳戶，如您同時持有e財庫與交割帳戶，則優先回饋於e財庫。</li>
                      <li>手續費抵用金結算時必須擁有「台股有效帳戶」，及「e財庫」或「交割帳戶」，否則將喪失活動優惠資格。</li>
                      <li>手續費抵用金依帳戶計算，僅限折抵台股電子交易手續費，不適用折抵定期定額交易手續費，若有多筆抵用金，依到期期限最近的優先抵扣。</li>
                    </ul>

                    <h4>【股票交易禮】</h4>
                    <ol class="notice-paren-list">
                      <li>適用對象：凱基證券之本國籍自然人客戶（限本國自然人設籍台灣、澎湖、金門、馬祖，含98員工戶，不含法人戶），不限新舊戶。</li>
                      <li>
                        活動期間內，人工或電子交易買入台美股（含台美股ETF、定期定額）並綁定「凱基證券樂活投資人」LINE官方帳號，台股交易金額每滿50,000台幣即有1張抽獎券（以交易帳號個別計算）；美股交易金額每滿1,500美元即有1張抽獎券（以交易帳號個別計算），交易台美股抽獎券上限各為888張。
                      </li>
                      <li>美股交易金額以成功扣款之實際交易日美金兌新臺幣匯率（四捨五入取整數）計算。</li>
                      <li>美股不論採台幣帳戶或外幣帳戶交割，均以美元計價之「成交金額」（不含手續費）認定是否符合本活動抽獎門檻及計算抽獎券張數。</li>
                      <li>本公司將於活動結束後之次月抽出符合資格客戶。</li>
                    </ol>

                    <h4>範例說明</h4>
                    <ul class="notice-bullet-list">
                      <li>A客戶在10/7買入美股3,000美元（獲得2張抽獎券），10/5再買入美股6,000美元（獲得4張抽獎券），則A客戶於共獲得6張抽獎券。</li>
                      <li>
                        B客戶在於10/7買入美股90,000美元（獲得60張抽獎券），於10/8買入台股60,000台幣，10/12再買入台股40,000台幣（累積交易台股達100,000台幣）（獲得2張抽獎券），則B客戶於共獲得62張抽獎券。
                      </li>
                      <li>E客戶10/7買入美股1,000美元，10/10賣出美股2,000美元，美股累積交易金額達3,000美元，則E客戶獲得2張抽獎券。</li>
                    </ul>

                    <p class="notice-paren-heading" data-number="(6)">本活動提供抽獎獎項為「iPhone18 Pro 手機」商品兌換券＆蝦皮全站優惠券，使用規範如下：
                    </p>
                    <ol class="notice-alpha-list">
                      <li>本活動獎項「iPhone18
                        Pro
                        手機」為商品兌換券，市價新臺幣44,900元，得獎人需持券向本活動配合之神腦國際購買商品，恕不得兌換現金，亦無法找零。如遇市價波動或特殊節日等加價狀況，得獎人須自行補足差額，實際使用事項依神腦國際規範為主。
                      </li>
                      <li>蝦皮全站優惠券為電子票券（下稱商品禮券）：
                        <ol>
                          <li>本商品禮券一經兌換無法更改或取消兌換，恕不可兌換等值現金。</li>
                          <li>運費不計入滿額門檻，每人活動期間最多享1次現折優惠，結帳時請確認是否已享有折扣，恕不得要求事後補償回饋。</li>
                          <li>需於結帳時輸入折扣碼，若無成功使用即無法享有折扣，其代表您購買的品項不適用本活動優惠。</li>
                          <li>
                            本活動提供抽獎之商品禮券，為數張面額1,000元之蝦皮全站優惠券，消費滿額1,001元始能使用面額1,000元之商品禮券，每次結帳僅能使用一組折扣代碼優惠，不得與其他優惠方案合併使用。
                          </li>
                          <li>此優惠由蝦皮購物提供，兌換及使用期限為6個月，使用期限至2027/07/15，蝦皮購物保有取消訂單、更改條款與終止本活動保留法律追訴權之權利。</li>
                          <li>折扣代碼不適用於服務票券類商品、特定類別、特定店家與特定Dyson／Apple／Android／小米系列商品，適用與否悉依實際訂單結帳頁面為準。</li>
                          <li>若取消訂單或辦理退貨，僅退還購物實際支付的金額，已折抵金額將無法歸還。</li>
                        </ol>
                      </li>
                    </ol>

                    <h4>【投資APP數位禮】</h4>
                    <ol class="notice-paren-list">
                      <li>適用對象：凱基證券之本國籍自然人客戶 (限本國自然人設籍台灣、澎湖、金門、馬祖，含98員工戶，不含法人戶)，不限新舊戶。</li>
                      <li>限活動期間當期成功登入隨身e策略APP並綁定「凱基證券樂活投資人」LINE官方帳號，即獲得一次抽獎機會，不重覆累積。</li>
                      <li>本活動提供之1000元超商好禮即享券為宜睿智慧「超商便利組4選1電子禮券」可兌換7-ELEVEN、全家、萊爾富、OK超商，四大品牌擇一使用，一旦選定品牌，限全額度單一品牌兌換使用。
                      </li>
                    </ol>

                    <ol start="3">
                      <li>本公司將於2027/1/5抽出2026/10/1-2026/12/31符合資格客戶，凱基證券將透過得獎人開戶留存的電子信箱通知iPhone18 Pro
                        手機得獎人，每個身分證字號限領獎一次，且領獎時須為凱基證券有效帳戶始符合贈獎資格。請務必於留存有效且正確的電子信箱及手機號碼。若因封鎖或其他原因導致無法收到電子郵件及訊息，凱基證券恕不提供補寄服務。
                      </li>
                      <li>
                        電子優惠券及禮券將透過「凱基證券樂活投資人」LINE官方帳號發送，客戶須於2026/12/31前綁定「凱基證券樂活投資人」LINE官方帳號，始符合交易禮獲獎資格。每個身分證字號限領獎一次，且領獎時須為凱基證券有效帳戶始符合贈獎資格。本公司將透過「凱基證券樂活投資人」LINE官方帳號向符合資格客戶寄發獲獎通知，得獎者需於2026年12月31日前綁定「凱基證券樂活投資人」LINE官方帳號，且於收到獲獎通知前不可封鎖或解除「凱基證券樂活投資人」LINE官方帳號好友，若因封鎖或解除致無法收到得獎訊息而無法獲得獎勵，恕不補發且不得要求轉換或轉讓獎項。
                      </li>
                      <li>交易禮＆數位禮，將於活動結束後統一抽獎，活動參加者可於活動結束後次月15日後（遇例假日順延）於活動網站「得獎名單」專區確認是否得獎。</li>
                      <li>
                        參加者之交易資料有違反證券交易法、期貨交易法、洗錢防制法及臺灣證券交易所股份有限公司、臺灣期貨交易所股份有限公司、中華民國證券商業同業公會、中華民國期貨業商業同業公會、財團法人中華民國證券櫃檯買賣中心等機構之相關規定，本公司有權取消其抽獎或得獎資格，參加者如因違反與凱基證券之合約或其他法令，致證券交易帳戶被停止使用或註銷者，亦同。
                      </li>
                      <li>參加本活動留下個人基本資料者，即表示同意本公司於法令允許範圍內，蒐集、處理及利用其個人資料。上述個人資料僅供本公司做為發送贈品、申報稅務資料、活動統計與本活動相關之處理或利用。</li>
                      <li>
                        依中華民國稅法規定，本活動獎項之中獎者如為中華民國境內居住之個人，每人每年度累積取得之獎金或獎品之價值超過新臺幣1,000元者，本公司將依規定開立扣繳憑單，列單申報主管稽徵機關，併入其所得額中計算綜合所得稅。
                      </li>
                      <li>
                        本活動所有獎項依所得稅法規定課稅，得獎人如為中華民國境內居住之個人，且獎項超過新台幣二萬元，本公司將代扣繳10%所得稅；如非中華民國境內居住之個人，不論得獎人所得之金額，將代扣繳20%所得稅。領獎方式將另行由所屬分公司通知，須完成繳納稅款始得領獎。
                      </li>
                      <li>
                        得獎人收到獲獎通知後，請依據通知內容於本公司指定期限內，提供聯絡資訊以利後續獎項寄送事宜，得獎人若未於期限內回覆，視同放棄獎項。請務必於本公司留存有效且正確的電子信箱及手機號碼。如因得獎人提供之電子郵件、手機號碼、填寫資料錯誤，或因無人簽收等因素導致獎項寄送投遞失敗，本公司將不另行通知及補寄。
                      </li>
                      <li>活動獎品悉以實物為準，恕無法挑選，如遇缺貨或不可抗力之因素無法提供時，本公司有權以其他等值商品替代。</li>
                      <li>活動獎品寄送過程中，若發生毀損、遲遞、錯遞或遺失等，非屬本公司疏失所致者，本公司恕不負責及補寄。</li>
                      <li>活動獎品寄送地區僅限台灣本島、澎湖、金門、馬祖等地區，恕不郵寄至海外地區。</li>
                      <li>本活動不與其他活動、專案或優惠併用。參加者如有資格不符合、違反本活動規定事項、活動期間內先銷戶再開戶、開戶後又銷戶或違約交割者等，本公司保有取消活動優惠之權利。</li>
                      <li>
                        除法律另有規定外，參加本活動留下個人基本資料者，可就其個人資料依法行使下列權利：查詢或請求閱覽、請求製給複製本、請求補充或更正、請求停止蒐集、處理或利用、請求刪除、請求處理限制、請求資料可攜性、拒絕自動化剖析、拒絕直接行銷目的之個人資料處理。
                      </li>
                      <li>
                        本公司保留隨時變更活動辦法、獎項內容以及暫停、延長、提前終止本活動之權利，本活動辦法若有未盡詳細事宜，本公司得隨時修訂公布，修改訊息將載於本網站上公布，不另行通知。本公司就活動內容、獎項內容得依實際狀況及較佳效果酌調整，並保有對於活動規則之解釋權利。
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </main>

        <!-- footer -->
        <footer class="footer">
          <div class="container clearfix">
            <div class="footer-content">
              <span class="footer-content-block">凱基證券股份有限公司</span>
              |
              <span class="footer-content-block">客服專線:(02)2389-0088 ‧ 0800-085-005</span>
              |
              <span class="footer-content-block">
                <a href="https://chatservice.kgi.com.tw/Webhook/?eservice=a18" target="_blank" title="智能客服"
                  class="linkText" id="ServiceBtn_B">
                  智能客服
                </a>
              </span>
              <br />
              <span class="footer-content-block">地址：台北市明水路700號</span>
              |
              <span class="footer-content-block">電話：(02)2181-8888</span>
              |
              <span class="footer-content-block">112年金管證總字第0025號</span>
            </div>
            <ul class="footer-share">
              <li>
                <a href="https://lin.ee/9W1XQqi" target="_blank" title="凱基證券樂活投資人LINE官方帳號">
                  <svg class="lineIconSvg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <path
                      d="M311 196.8v81.3c0 2.1-1.6 3.7-3.7 3.7h-13c-1.3 0-2.4-.7-3-1.5l-37.3-50.3v48.2c0 2.1-1.6 3.7-3.7 3.7h-13c-2.1 0-3.7-1.6-3.7-3.7V196.9c0-2.1 1.6-3.7 3.7-3.7h12.9c1.1 0 2.4 .6 3 1.6l37.3 50.3V196.9c0-2.1 1.6-3.7 3.7-3.7h13c2.1-.1 3.8 1.6 3.8 3.5zm-93.7-3.7h-13c-2.1 0-3.7 1.6-3.7 3.7v81.3c0 2.1 1.6 3.7 3.7 3.7h13c2.1 0 3.7-1.6 3.7-3.7V196.8c0-1.9-1.6-3.7-3.7-3.7zm-31.4 68.1H150.3V196.8c0-2.1-1.6-3.7-3.7-3.7h-13c-2.1 0-3.7 1.6-3.7 3.7v81.3c0 1 .3 1.8 1 2.5c.7 .6 1.5 1 2.5 1h52.2c2.1 0 3.7-1.6 3.7-3.7v-13c0-1.9-1.6-3.7-3.5-3.7zm193.7-68.1H327.3c-1.9 0-3.7 1.6-3.7 3.7v81.3c0 1.9 1.6 3.7 3.7 3.7h52.2c2.1 0 3.7-1.6 3.7-3.7V265c0-2.1-1.6-3.7-3.7-3.7H344V247.7h35.5c2.1 0 3.7-1.6 3.7-3.7V230.9c0-2.1-1.6-3.7-3.7-3.7H344V213.5h35.5c2.1 0 3.7-1.6 3.7-3.7v-13c-.1-1.9-1.7-3.7-3.7-3.7zM512 93.4V419.4c-.1 51.2-42.1 92.7-93.4 92.6H92.6C41.4 511.9-.1 469.8 0 418.6V92.6C.1 41.4 42.2-.1 93.4 0H419.4c51.2 .1 92.7 42.1 92.6 93.4zM441.6 233.5c0-83.4-83.7-151.3-186.4-151.3s-186.4 67.9-186.4 151.3c0 74.7 66.3 137.4 155.9 149.3c21.8 4.7 19.3 12.7 14.4 42.1c-.8 4.7-3.8 18.4 16.1 10.1s107.3-63.2 146.5-108.2c27-29.7 39.9-59.8 39.9-93.1z" />
                  </svg>
                </a>
              </li>
              <li>
                <a href="https://www.facebook.com/KGISecurities" target="_blank" title="凱基證券樂活投資人Facebook">
                  <svg class="fbIconSvg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                    <path
                      d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64h98.2V334.2H109.4V256h52.8V222.3c0-87.1 39.4-127.5 125-127.5c16.2 0 44.2 3.2 55.7 6.4V172c-6-.6-16.5-1-29.6-1c-42 0-58.2 15.9-58.2 57.2V256h83.6l-14.4 78.2H255V480H384c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64z" />
                  </svg>
                </a>
              </li>
              <li>
                <a href="https://www.instagram.com/kgisecurities/" target="_blank" title="凱基證券樂活投資人ig">
                  <svg class="igIconSvg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                    <path
                      d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z" />
                  </svg>
                </a>
              </li>
              <li>
                <a href="https://www.youtube.com/c/%E5%87%B1%E5%9F%BA%E6%A8%82%E6%B4%BB%E6%8A%95%E8%B3%87%E4%BA%BA"
                  target="_blank" title="凱基證券樂活投資人youtube">
                  <svg class="ytIconSvg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                    <path
                      d="M549.7 124.1c-6.3-23.7-24.8-42.3-48.3-48.6C458.8 64 288 64 288 64S117.2 64 74.6 75.5c-23.5 6.3-42 24.9-48.3 48.6-11.4 42.9-11.4 132.3-11.4 132.3s0 89.4 11.4 132.3c6.3 23.7 24.8 41.5 48.3 47.8C117.2 448 288 448 288 448s170.8 0 213.4-11.5c23.5-6.3 42-24.2 48.3-47.8 11.4-42.9 11.4-132.3 11.4-132.3s0-89.4-11.4-132.3zm-317.5 213.5V175.2l142.7 81.2-142.7 81.2z" />
                  </svg>
                </a>
              </li>
            </ul>
          </div>
        </footer>
        <!-- fixedBtn：凱基活動頁公司規範元件 -->
        <div class="fixedBtn">
          <ul>
            <li>
              <a href="https://eoa.kgi.com.tw/OOA/index.aspx?Source=E260801" title="開戶" target="_blank"
                id="AccountBtn_F">
                <img src="images/open-account.svg" alt="開戶" id="FixedBtn_F01">
              </a>
            </li>
            <li>
              <a href="#register" title="立即登錄" id="SigninBtn_F">
                <img src="images/login.svg" alt="立即登錄" id="FixedBtn_F02">
              </a>
            </li>
          </ul>
        </div>
        <div class="topBtn">
          <a href="#top" title="返回最上面">
            <span class="material-symbols-outlined">
              keyboard_arrow_up
            </span>
          </a>
        </div>

        <div class="modal" id="myModal" style="display:none">
          <div class="modal-container" id="modalContainer" role="dialog" aria-modal="true"
            aria-labelledby="ticket-title">
            <button class="modal-close closeBtn" type="button" aria-label="關閉" onclick="funCloseMessage()">
              <span class="material-symbols-outlined">close</span>
            </button>
            <div class="modal-container-infoArea">
              <h2 id="ticket-title"><span class="text-center text-blue">登錄成功！</span></h2>
              <p>新朋友請記得完成台美股開戶審核並綁定「凱基證券樂活投資人」LINE官方帳號，月月700元手續費抵用金等你拿！</p>
              <div class="btnArea">
                <div class="btn blue">
                  <a href="https://eoa.kgi.com.tw/OOA/index.aspx?Source=E260801" title="立即開戶" target="_blank"
                    id="SigninBtn_M" rel="nofollow me noopener noreferrer">立即開戶GO<i
                      class="fa-solid fa-angle-right"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--<div class="modal" id="myModal" v-if="ticketModal" @click.self="ticketModal=false">
      <div class="modal-container" id="modalContainer" role="dialog" aria-modal="true" aria-labelledby="ticket-title">
        <button class="modal-close closeBtn" type="button" @click="ticketModal=false" aria-label="關閉">
          <span class="material-symbols-outlined">close</span>
        </button>
        <div class="modal-container-infoArea">
          <h2 id="ticket-title"><span class="text-center text-blue">登錄成功！</span></h2>
          <p>新朋友請記得完成台美股開戶審核並綁定「凱基證券樂活投資人」LINE官方帳號，月月700元手續費抵用金等你拿！</p>
          <div class="btnArea">
            <div class="btn blue">
              <a href="https://eoa.kgi.com.tw/OOA/index.aspx?Source=E260801"
                title="立即開戶" target="_blank" id="SigninBtn_M" rel="nofollow me noopener noreferrer">立即開戶GO<i
                  class="fa-solid fa-angle-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>-->
      </div>
      <!------------ 有登錄按鈕時，GA 登錄成功事件 ------------>
      <script>
        function trackSubmitSuccess() {
          if (window.__activityLoginTracked) return;
          window.__activityLoginTracked = true;

          const pathParts = window.location.pathname
            .split('/')
            .filter(Boolean);

          const lastPart = pathParts[pathParts.length - 1];
          const isFile = lastPart.includes('.');

          const activityName = isFile
            ? pathParts[pathParts.length - 2]
            : lastPart;

          window.dataLayer = window.dataLayer || [];
          window.dataLayer.push({
            event: 'submit_success',
            form_name: `${activityName}_signin`,
            page_location: window.location.href
          });



        }
      </script>
      <script src="js/main.js?v=20261020"></script>
      <script src="../event_setting/rewards_2026Q4/checkdate.js"></script>
    </form>
  </body>

  </html>