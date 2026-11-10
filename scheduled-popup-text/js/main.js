if ('scrollRestoration' in history) {
  history.scrollRestoration = 'manual';
}

window.addEventListener('load', () => {
  if (!window.location.hash) {
    window.scrollTo(0, 0);
  }
}, {once:true});

const app = Vue.createApp({
  data() {
    return {
      menuOpen: false, showTop: false, ticketModal: false, pid: '', agreed: true, formMessage: '', rankingTab: 'tw', redeemTab: 0, redeemStep: 0, teachingDragStart: null, teachingDragX: 0, openFaq: [], noticeOpen: false, parallaxBalls: [], parallaxFrame: 0,
      navItems: [{id:'gifts',label:'好禮三重送'},{id:'fees',label:'手續費省更多'},{id:'open',label:'線上開戶'},{id:'ranking',label:'熱門排行'},{id:'qa',label:'Q&A'},
        {
          url:'https://event.kgi.com.tw/news/event/newoffer/index.aspx',
          label:'已結束-前期活動回顧'
        }
      ],
      rankings: {
        tw:[{code:'0050',type:'市值型',name:'元大台灣50',copy:'追蹤富時臺灣證券交易所臺灣50指數，挑選臺灣證券交易所上市股票中，總市值最大的50家公司作為指數的成分股。'},{code:'0056',type:'高股息',name:'元大高股息',copy:'追蹤臺灣富時臺灣證券交易所高股息指數，該指數選取未來一年預測現金股利殖利率最高的50支股票作為成分股。'},{code:'00878',type:'高股息',name:'國泰永續高股息',copy:'追蹤MSCI臺灣ESG永續高股息精選30指數，捕捉台灣兼具永續與高息兩大特徵之企業的績效表現。 '},{code:'2330',type:'科技',name:'台積電',copy:'全球晶圓代工龍頭，先進製程與量產能力領先，為AI與高效能運算關鍵供應商。'},{code:'009816',type:'市值型',name:'凱基台灣TOP50',copy:'追蹤「臺灣指數公司特選臺灣 TOP 50 指數」，經流動性及獲利指標，篩選出市值排名前 50 的股票。'}],
        us:[{code:'VOO',type:'',name:'先鋒標普 500 ETF',copy:'投資美國500強企業，穩健成長首選。'},{code:'NVDA',type:'',name:'輝達',copy:'美國的電腦設備製造商，專門設計，並銷售圖形處理器(GPU)領域適用的軟硬體設備。'},{code:'QQQ',type:'',name:'景順 QQQ 信託系列1',copy:'聚焦納斯達克100，科技創新動力強勁。'},{code:'VT',type:'',name:'先鋒全世界股票 ETF',copy:'覆蓋全球市場，分散投資首選標的。'},{code:'QQQM',type:'',name:'Invesco 納斯達克100 ETF',copy:'全球最大ETF，追蹤美國股市核心指數。'}]
      },
      redeemTabs:['立即綁定','蝦皮全站優惠券','超商好禮即享券'],
      teachingNumbers:['1','2','3','4'],
      teachingSlides:[
        [
          {title:'掃描加入',copy:'「凱基證券樂活投資人」LINE 官方帳號',images:[{src:'images/step_process_1.jpg',alt:'掃描加入凱基證券樂活投資人 LINE 官方帳號'}]},
          {title:'於選單點選「立即綁定」',copy:'並完成綁定流程',images:[{src:'images/step_process_2.jpg',alt:'於選單點選立即綁定並完成綁定流程'}]},
          {title:'出現以下任一種畫面',copy:'視為綁定成功',images:[{src:'images/step_process_3a.jpg',alt:'LINE 綁定成功畫面一'},{src:'images/step_process_3b.jpg',alt:'LINE 綁定成功畫面二'}]}
        ],
        [
          {title:'',sections:[{label:'【開戶禮】',copy:'符合開戶資格且完成LINE綁定,，本公司將於次月15日前透過「凱基證券樂活投資人」LINE官方帳號發送開戶禮蝦皮優惠券，請點擊「立即領取」進入兌換流程。'},{label:'【交易禮】',copy:'本公司將於活動結束後次月15日前透過「凱基證券樂活投資人」LINE官方帳號發送蝦皮優惠券，請點擊「立即領取」進入兌換流程。'}],images:[{src:'images/step_coupon_1a.png',alt:'從 LINE 通知點擊立即領取蝦皮全站優惠券'}]},
          {title:'進入票匣清單',copy:'點擊查看',images:[{src:'images/step_coupon_2a.png?v=20260916',alt:'進入票匣清單點擊查看'}]},
          {title:'點擊「兌換」連結',copy:'進入蝦皮購物兌換頁面',copyLink:'https://shopee.tw/user/voucher-wallet',images:[{src:'images/step_coupon_3a.png?v=20260916',alt:'點擊兌換進入蝦皮購物兌換頁面'}]},
          {title:'',customType:'shopee-voucher',images:[{src:'images/step_coupon_4a.jpg',alt:'貼上蝦皮商城禮券兌換序號'}]}
        ],
        [
          {title:'',sections:[{label:'【數位禮】',copy:'本公司將於活動結束後次月15日前透過「凱基證券樂活投資人」LINE官方帳號發送超商好禮即享券，請點擊「立即領取」進入兌換流程。'}],images:[{src:'images/step_coupon_1b.png?v=20260916',alt:'從 LINE 通知點擊立即領取超商好禮即享券'}]},
          {title:'進入票匣清單',copy:'點擊查看',images:[{src:'images/step_coupon_2b.png?v=20260916',alt:'進入票匣清單點擊查看'}]},
          {title:'點擊「兌換」連結',copy:'進入宜睿智慧兌換頁面',images:[{src:'images/step_coupon_3b.png?v=20260916',alt:'點擊兌換進入宜睿智慧兌換頁面'}]},
          {title:'',copy:'於畫面中貼上密碼',images:[{src:'images/step_coupon_4b.jpg',alt:'在宜睿智慧兌換頁面貼上密碼'}]}
        ]
      ],
      faqs:[
        {q:'請問何時可領取證券開戶優惠500元蝦皮全站優惠券？',a:'500元 蝦皮全站優惠券預計於您符合資格之「次月15日前」透過「凱基證券樂活投資人」LINE官方帳號發送，請務必留意並於2026/12/31前綁定「凱基證券樂活投資人」LINE官方帳號。'},
        {q:'請問如未成年人新開戶並符合資格，沒有LINE帳號可綁定，可以收到500元蝦皮全站優惠券嗎？',a:'未成年人如符合資格，凱基證券將透過未成年人開戶留存的電子信箱，以email方式寄發500元蝦皮全站優惠券，請務必留存有效且正確的電子信箱。',link:'https://event.kgi.com.tw/news/event/how-to-open-brokerage-account-for-children/index.html',linkText:'(如何開立未成年人帳戶)'},
        {q:'請問何時可領取700元股票交易手續費抵用金？',a:'手續費抵用金將於您於2026/12/31前「完成本活動登錄」並於2027/07/31前「完成首筆交易」扣款成功之次月起至2027年8月回饋到您的「交割帳戶」或「e財庫」，如您同時持有e財庫與交割帳戶，則優先回饋於e財庫。(手續費抵用金僅限折抵台股電子交易，不含定期定額交易，每月使用上限700元，回饋期間為2026.11-2027.08)。例如小明2026/10/15新開戶並完成活動頁「登錄」與「交易」，手續費抵用金回饋期間為2026/11至2027/08，手續費抵用金將於2026/12至2027/09回饋於您的帳上；小麗於2026/10/15新開戶並完成活動頁「登錄」，並於2027/01/12完成首筆交易，手續費抵用金回饋期間為2027/2至2027/08，手續費抵用金將於2027/3至2027/09回饋於您的帳上。'},
        {q:'如何參加股票交易禮的抽獎活動？需要登錄活動嗎？',a:'不限新舊戶只要是凱基證券有開立台股或複委託帳戶的客戶，「免登錄」都可以參加活動。凡於活動期間2026/10/1~2026/12/31台股交易金額達5萬元，或美股交易達1,500美元並綁定「凱基證券樂活投資人」LINE官方帳號，都享有一次抽獎機會，交易越多、中獎機會越高！​交易台美股抽獎券上限各為888張。​'},
        {q:'凱基證券既有客戶也可參加股票交易禮及數位禮的抽獎活動嗎？',a:'可以。不限新舊戶只要是凱基證券的客戶，有開立台股或複委託帳戶，「免登錄」並綁定「凱基證券樂活投資人」LINE官方帳號都可以參加抽獎活動。除此之外，還享美股單筆電子單手續費驚喜價無低消及定期定額不限交易金額，手續費均一價。'},
        {q:'請問凱基證券既有客戶如是未成年人，沒有LINE帳號可綁定也可參加股票交易禮及數位禮的抽獎活動嗎？',a:'可以。不限新舊戶只要是凱基證券的客戶，有開立台股或複委託帳戶，「免登錄」都可以參加抽獎活動，未成年人不需要綁定「凱基證券樂活投資人」LINE官方帳號。如獲獎，凱基證券將透過未成年人開戶留存的電子信箱，以email方式寄發優惠券，請務必留存有效且正確的電子信箱。'},
        {q:'我可以在哪裡看到我現在的抽獎券張數？',a:'請於凱基證券隨身e策略APP(舊版)首頁的「凱基專區」⭢「凱基主打」⭢「優惠活動」中看到，或是',link:'https://h5webtrade.kgieworld.com.tw/ServicesWeb/Auth/Login?orign=P&applytype=86&stcok=1&clear=Y',linkText:'點選這裡',afterLink:'即可查詢；新版隨身e策略APP點選「更多」⭢「服務」⭢「其他」⭢「優惠活動」。​​'},
        {q:'請問何時會公告抽獎？',a:'本公司將於活動結束後統一抽獎，並於次月15日後(遇例假日順延)於活動網站「得獎名單」專區或是凱基證券隨身e策略APP首頁的「凱基專區」⭢「凱基主打」⭢「優惠活動」專區確認是否得獎。​'}
      ]
    };
  },
  mounted() {
    window.addEventListener('scroll', this.onScroll, {passive:true});
    //this.getQueryStringToNext();
    this.onScroll();
    this.$nextTick(() => {
      this.setupReveal();
      this.setupParallax();
      this.setupOpeningOffersSlider();
    });
  },
  beforeUnmount() {
    window.removeEventListener('scroll', this.onScroll);
    window.removeEventListener('scroll', this.queueParallax);
    window.removeEventListener('resize', this.queueParallax);
    window.removeEventListener('resize', this.updateTradeBackground);
    if (this.openingOffersResizeHandler) {
      window.removeEventListener('resize', this.openingOffersResizeHandler);
    }
    if (window.jQuery && window.jQuery('.opening-offers').hasClass('slick-initialized')) {
      window.jQuery('.opening-offers').slick('unslick');
    }
    if (this.parallaxFrame) cancelAnimationFrame(this.parallaxFrame);
  },
  methods: {
    getQueryStringToNext(){
      window.addEventListener('load', () => {
        const query = window.location.search.slice(1);
        const links = document.querySelectorAll('a:not(.dontAddString)');
        if (!query) return;
        links.forEach(link => {
          const hrefValue = link.getAttribute('href');
          if (!hrefValue || hrefValue.startsWith('#') || hrefValue.startsWith('javascript:')) return;
          if (hrefValue.includes('?')) {
            const hrefParts = hrefValue.split('?');
            link.setAttribute('href', hrefParts[0] + '?' + query + '&' + hrefParts.slice(1).join('?'));
          } else {
            link.setAttribute('href', hrefValue + '?' + query);
          }
        });
      }, {once:true});
    },
    setupOpeningOffersSlider(){
      if (!window.jQuery || !window.jQuery.fn || !window.jQuery.fn.slick) return;
      const slider = window.jQuery('.opening-offers');
      const updateSlider = () => {
        const isMobile = window.innerWidth <= 600;
        const isInitialized = slider.hasClass('slick-initialized');
        if (isMobile && !isInitialized) {
          slider.slick({
            slidesToShow:1,
            slidesToScroll:1,
            autoplay:false,
            pauseOnHover:false,
            arrows:true,
            dots:true,
            infinite:false,
            speed:500,
            adaptiveHeight:false,
            swipe:true,
            draggable:true
          });
        } else if (!isMobile && isInitialized) {
          slider.slick('unslick');
        }
      };
      this.openingOffersResizeHandler = updateSlider;
      updateSlider();
      window.addEventListener('resize', this.openingOffersResizeHandler, {passive:true});
    },
    closeMenu(){ this.menuOpen=false; },
    onScroll(){
      this.showTop=window.scrollY>650;
      const topButton = document.querySelector('.topBtn');
      if (topButton) {
        topButton.style.transform = window.scrollY > 100 ? 'matrix(1, 0, 0, 1, 0, 0)' : 'matrix(1, 0, 0, 1, 0, 400)';
        topButton.style.opacity = window.scrollY > 100 ? '1' : '0';
      }
      this.queueParallax();
    },
    scrollTo(id){ const el=document.getElementById(id); if(el) el.scrollIntoView({behavior:'smooth'}); },
    changeRedeemStep(direction){
      const total = this.teachingSlides[this.redeemTab].length;
      this.redeemStep = (this.redeemStep + direction + total) % total;
    },
    startTeachingDrag(event){
      if (event.target.closest('button,a')) return;
      if (event.pointerType === 'mouse' && event.button !== 0) return;
      this.teachingDragStart = event.clientX;
      this.teachingDragX = 0;
      event.currentTarget.setPointerCapture(event.pointerId);
    },
    moveTeachingDrag(event){
      if (this.teachingDragStart === null) return;
      const distance = event.clientX - this.teachingDragStart;
      this.teachingDragX = Math.max(-120,Math.min(120,distance));
    },
    endTeachingDrag(event){
      if (this.teachingDragStart === null) return;
      const distance = event.clientX - this.teachingDragStart;
      this.teachingDragStart = null;
      this.teachingDragX = 0;
      if (Math.abs(distance) >= 50) this.changeRedeemStep(distance < 0 ? 1 : -1);
    },
    cancelTeachingDrag(){
      this.teachingDragStart = null;
      this.teachingDragX = 0;
    },
    toggleFaq(index){
      const position = this.openFaq.indexOf(index);
      if (position === -1) {
        this.openFaq.push(index);
      } else {
        this.openFaq.splice(position,1);
      }
    },
    setupParallax(){
      this.parallaxBalls = [...document.querySelectorAll('.parallax-ball')];
      if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
      window.addEventListener('scroll', this.queueParallax, {passive:true});
      window.addEventListener('resize', this.queueParallax, {passive:true});
      this.queueParallax();
    },
    queueParallax(){
      if (this.parallaxFrame) return;
      this.parallaxFrame = requestAnimationFrame(() => {
        this.parallaxBalls.forEach(ball => {
          const section = ball.parentElement;
          const rect = section.getBoundingClientRect();
          const travel = window.innerHeight + rect.height;
          const progress = Math.max(0, Math.min(1, (window.innerHeight - rect.top) / travel));
          const moveX = Number(ball.dataset.moveX) || 0;
          const moveY = Number(ball.dataset.moveY) || 0;
          const offsetX = (progress - .5) * moveX;
          const offsetY = (progress - .5) * moveY;
          ball.style.transform = `translate3d(${offsetX}px, ${offsetY}px, 0)`;
        });
        this.parallaxFrame = 0;
      });
    },
    setupReveal(){
      const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
      const tradeSection = document.querySelector('.trade');
      const tradeBackground = document.querySelector('.trade-background-swipe');
      const openAccountSection = document.querySelector('.open-account');
      const openAccountBackground = document.querySelector('.open-account-background-swipe');
      this.updateTradeBackground();
      window.addEventListener('resize', this.updateTradeBackground, {passive:true});
      const selector = '.section img, .section h1, .section h2, .section h3, .section .eyebrow, .section .gift-audience-note, .section article, .section form, .section .register-copy, .section .trade-threshold-list, .section .draw-chance, .section .thresholds, .section .tabs, .section .feature-panel, .section .ranking-tabs, .section .ranking-table, .section .accordion, .section .notice-title';
      const targets = [...document.querySelectorAll(selector)].filter(el => !el.closest('.teaching-slide') && !el.closest('.notice'));
      document.documentElement.classList.add('reveal-enabled');
      targets.forEach((el, index) => {
        el.classList.add('reveal-up');
        el.style.setProperty('--reveal-delay', `${(index % 4) * 130}ms`);
      });
      if (reduceMotion || !('IntersectionObserver' in window)) {
        targets.forEach(el => el.classList.add('is-revealed'));
        if (tradeBackground) tradeBackground.classList.add('background-active');
        if (openAccountBackground) openAccountBackground.classList.add('background-active');
        return;
      }
      if (tradeSection) {
        const tradeBackgroundObserver = new IntersectionObserver(entries => {
          entries.forEach(entry => {
            if (tradeBackground) tradeBackground.classList.toggle('background-active', entry.isIntersecting);
          });
        }, {threshold: 0.18});
        tradeBackgroundObserver.observe(tradeSection);
      }
      if (openAccountSection) {
        const openAccountBackgroundObserver = new IntersectionObserver(entries => {
          entries.forEach(entry => {
            if (openAccountBackground) openAccountBackground.classList.toggle('background-active', entry.isIntersecting);
          });
        }, {threshold: 0.18});
        openAccountBackgroundObserver.observe(openAccountSection);
      }
      const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
          if (!entry.isIntersecting) return;
          entry.target.classList.add('is-revealed');
          observer.unobserve(entry.target);
        });
      }, {threshold: 0.12, rootMargin: '0px 0px -6% 0px'});
      targets.forEach(el => observer.observe(el));
    },
    updateTradeBackground(){
      const tradeSection = document.querySelector('.trade');
      const tradeBackground = document.querySelector('.trade-background-swipe');
      const openAccountSection = document.querySelector('.open-account');
      const openAccountBackground = document.querySelector('.open-account-background-swipe');
      if (tradeSection && tradeBackground) {
        tradeBackground.style.top = `${tradeSection.offsetTop}px`;
        tradeBackground.style.height = `${tradeSection.offsetHeight}px`;
      }
      if (openAccountSection && openAccountBackground) {
        openAccountBackground.style.top = `${openAccountSection.offsetTop}px`;
        openAccountBackground.style.height = `${openAccountSection.offsetHeight}px`;
      }
    },
    submitRegister(){ const valid=/^[A-Z][12]\d{8}$/i.test(this.pid); if(!valid){this.formMessage='請確認身分證字號格式。';return;} if(!this.agreed){this.formMessage='請先勾選同意個人資料告知書。';return;} this.formMessage='資料格式驗證完成；正式上線時將送往活動登錄系統。'; }
  }
});
const q4AppInstance = app.mount('#q4-app');

window.openQ4Modal = function() {
  q4AppInstance.ticketModal = true;
};

window.closeQ4Modal = function() {
  q4AppInstance.ticketModal = false;
};
