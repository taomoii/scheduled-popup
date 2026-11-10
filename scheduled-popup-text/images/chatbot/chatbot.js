(function () {
    'use strict';

    // =========================================================
    // KGI Chatbot
    // =========================================================

    // 防止同一頁重複載入
    if (window.KGIChatbot) return;


    // =========================================================
    // 1. 基本設定
    // =========================================================

    const userConfig = window.KGI_CHATBOT_CONFIG || {};

    const config = {

        // 共用圖片位置
        imageBase:
            userConfig.imageBase ||
            'images/',

        // 開戶網址
        openAccountUrl:
            userConfig.openAccountUrl || '',

        // 活動注意事項網址
        rulesUrl:
            userConfig.rulesUrl ||
            'javascript:void(0);',

        // 是否自動產生右下角 Chatbot 按鈕
        autoCreateTrigger:
            userConfig.autoCreateTrigger !== false,

        // Chatbot 主圖
        triggerIcon:
            userConfig.triggerIcon ||
            'chatbot-icon.png',

        // Chatbot 文字圖片
        triggerTextImage:
            userConfig.triggerTextImage ||
            'chatbot-icon-text.png',

        // 無障礙文字
        triggerAlt:
            userConfig.triggerAlt ||
            '開啟優享福利'

    };



    // 圖片路徑 helper
    function imagePath(fileName) {
        return config.imageBase + fileName;
    }



    // =========================================================
    // 2. QA 資料
    // =========================================================
    const qaData = {

        // ========================================
        // q1 手續費優惠
        // ========================================
        q1: {
            question: "▶ 手續費優惠",

            answer: `
            新開戶即可享手續費優惠！ <br>
            🚩 台股手續費 1 .1折優惠  <br>
        
            不論是買熱門個股、存零股，還是定期定額存股📅， <br>
            只要你是 台美股新戶 + 完成活動頁登錄並完成一筆交易✅， 
            月月享 $700 元手續費抵用金 🎁 <br>
            💡 假設一個月投資 100 萬元，手續費原本須支付 $855 元， 
            現在只要 $155 元 👉 相當於台股手續費 1 .1折優惠！ 🎉 <br>
            
            <br>
        
            🌎 美股不分新舊戶手續費0.1% <br>
            ✅ 美股電子下單手續費只要0.1%，沒有最低收費限制 <br>        
            ✅ 定期定額不論金額，手續費均一價0.03美元<br><br>   
            ✨開戶享3重好禮！台美股新戶送500元蝦皮全站優惠券 ✨ <br>
            ✨交易滿額再抽 iPhone 18 及蝦皮萬元購物金✨ <br>
            <a
              href="https://event.kgi.com.tw/news/event/rewards/index.aspx#login"
              target="_blank"
            >
            立即登錄 <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
        
            <a
              href="#"
              data-kgi-open-account
              id="AccountBtn_M01"
            >
              立即開戶​  <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
          `,

            options: [
                {
                    text: "▶ 了解詳細規則",
                    target: "q2"
                }
            ]
        },


        // ========================================
        // q2 詳細規則
        // → 台股試算 / 美股試算
        // ========================================
        q2: {
            question: "▶ 了解詳細規則",

            answer: `
            <strong>台股手續費優惠：</strong><br>
        
            ✨ 活動期間內（2026/10/01-2026/12/31）<br>
            新開立台美股帳戶+完成活動登錄+首筆交易，
            月月享最高700元的台股電子交易手續費抵用金回饋
            (最後一筆回饋為2027.08) <br><br>
        
           手續費抵用金僅可折抵台股電子下單手續費5折含以上之交易，
           不適用於定期定額交易，且須於效期內使用完畢，逾期失效。 <br><br>

           ✨台股定期定額每筆手續費均一價1元 <br>

           於2022/5/1至2026/12/31之間成立之契約，
           在2026/1/1至2026/12/31之間每筆手續費均一價1元， 
           2022/4/30(含)前成立之契約，不適用均一價。 <br><br>
        
        
            <strong>美股手續費優惠：</strong><br>
        
            ✨ 活動期間內（2026/10/1－2026/12/31）
            凱基證券複委託帳戶的本國自然人客戶，
            即可享有美股單筆電子交易手續費0.1%且無低消，
            美股定期定額則不限交易金額，手續費均0.03元美元 
            。詳情可見 : 
            <a
              href="https://event.kgi.com.tw/news/event/trade-us-now/index.html"
              target="_blank"
              rel="noopener noreferrer"
            > 活動網頁​  <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
            ​<br><br>
        
        ​
        
            優惠內容及費率詳情請洽營業員、智能客服、官網或客服專線
            （02）2389-0088／0800-085-005。
            本公司保留活動內容變更、修改、暫停、延長或終止之權利，相關事項以本公司最新公告為準。 ​<br><br>
        
        ​
        
            ‼️ 優惠不等人，現在就完成開戶開始累積你的資產 
             <a
              href="#"
              data-kgi-open-account
              id="AccountBtn_M02"
            >
              我要開戶​  <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
          `,

            options: [
                {
                    text: "▶ 台股試算",
                    target: "q3"
                },
                {
                    text: "▶ 美股試算",
                    target: "q4"
                }
            ]
        },


        // ========================================
        // q3 台股試算
        // → 美股試算 / 最新活動
        // ========================================
        q3: {
            question: "▶ 台股試算",

            answer: `
            假設每月交易 NT$100萬：<br><br>
        
            原本手續費需 NT$855
            （1,000,000 × 0.1425% × 0.6）<br>
        
            扣除每月 $700 元手續費抵用金
            👉 NT$155（855 - 700）<br><br>
        
            ✨ 現在交易 100 萬，
            手續費只要 NT$155！<br>
        
            👉 相當於台股手續費 1.1 折優惠！🎉<br><br>
        
        
            📌 如何獲得優惠？只要三步驟：<br>
        
            新開台美股戶 + 登錄活動頁 + 完成任一筆交易<br><br>
        
            👉 立即開戶，省下您的第一筆 
            <a
              href="#"
              data-kgi-open-account
              id="AccountBtn_M03"
            >
              我要開戶​ <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
            <br>
        
            👉 登錄活動頁：
            <a
              href="#login"
              data-kgi-anchor="login"
              onclick="goToSection(event, 'login')"
            >
            立即登錄 <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
            <br>
        
            👉 完成任一筆交易
            （台美股、定期定額不限）
            <a
              href="https://www.kgieworld.com.tw/ExternalFiles/mobile/WFLinkApp.aspx?Org=P&rUrl=kgiP"
              target="_blank"
              rel="noopener noreferrer"
              id="TradeBtn_M01"
            >
             立即交易​ <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
            <br>
            <br>
        
            註：以個股/零股交易非定期定額試算<br>
        
            註：以上為試算價格，
            如有問題可洽詢客服專線 (02)2389-0088
          `,

            options: [
                {
                    text: "▶ 美股試算",
                    target: "q4"
                },
                {
                    text: "▶ 最新活動",
                    target: "q5"
                }
            ]
        },


        // ========================================
        // q4 美股試算
        // → 台股試算 / 最新活動
        // ========================================
        q4: {
            question: "▶ 美股試算",

            answer: `
            假設每月交易 US$2,000：<br><br>
        
            ✨ 每月手續費只需支付 2 美元
            （2000 × 0.1%）<br><br>
        
            📌 無論你是新舊戶，
            只要在活動期間內下單複委託即可享有優惠。<br><br>
        
            👉 立即開戶，累積全球資產與觀點 
             <a
              href="#"
              data-kgi-open-account
              id="AccountBtn_M04"
            >
              我要開戶​ <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
            <br>
        
            👉 運用零錢入主全球企業級資產 
            <a
              href="https://www.kgieworld.com.tw/ExternalFiles/mobile/WFLinkApp.aspx?Org=P&rUrl=kgiP"
              target="_blank"
              rel="noopener noreferrer"
              id="TradeBtn_M02"
            >
             立即交易​ <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
            </a>
            <br><br>
        
            註：以個股/零股交易非定期定額試算<br>
        
            註：以上為試算價格，
            如有問題可洽詢客服專線 (02)2389-0088
          `,

            options: [
                {
                    text: "▶ 台股試算",
                    target: "q3"
                },
                {
                    text: "▶ 最新活動",
                    target: "q5"
                }
            ]
        },


        // ========================================
        // q5 最新活動
        // → 立即開戶 / 優惠總覽
        // ========================================
        q5: {
            question: "▶ 最新活動",

            answer: `
            ✨ 年末加碼✨<br>
        
            <a href="https://event.kgi.com.tw/news/event/rewards/index.aspx" target="_blank" rel="noopener noreferrer">
            <strong>
              
            享投資選凱基​ <span class="right-arrow"><img src="images/arrow.svg" class="btn-grid-img"></span>
         
            </strong>   
            </a>
            <br>
        
            🎁 開戶享三重好禮！<br>
        
            台美股新戶送 500 元蝦皮全站優惠券<br>
        
            交易月月加碼 700 元手續費抵用金<br>
        
            交易滿額再抽 iPhone 18 Pro
            及蝦皮萬元購物金<br><br>
        
            📱 體驗隨身e策略APP再抽千元超商即享券 <br>
          `,

            options: [
                {
                    text: "▶ 立即開戶",
                    action: "openAccount"
                },
                {
                    text: "▶ 優惠總覽",
                    url: "https://event.kgi.com.tw/news/event/discount-info/index.html"
                }
            ]
        },


    };


    // =========================================================
    // 3. 產生 Chatbot HTML
    // =========================================================

    function createChatbotHTML() {

        return `

            <div id="kgi-chatbot-root">


                <!-- ============================= -->
                <!-- 開啟按鈕 -->
                <!-- ============================= -->

                ${config.autoCreateTrigger

                ? `

    <button
        type="button"
        class="chatbot-button"
        data-kgi-chatbot-open
        aria-label="${config.triggerAlt}"
    >

        <img
            src="${imagePath(config.triggerIcon)}"
            alt=""
            class="chatbot-icon-img"
        >

        <img
            src="${imagePath(config.triggerTextImage)}"
            alt=""
            class="chatbot-icon-text"
        >

    </button>

`

                : ''
            }



                <!-- ============================= -->
                <!-- Popup -->
                <!-- ============================= -->

                <div
                    class="modal-overlay"
                    id="kgiChatbotOverlay"
                    aria-hidden="true"
                >

                    <div
                        class="modal-panel"
                        id="kgiChatbotPanel"
                        role="dialog"
                        aria-modal="true"
                        aria-label="小資方案客服"
                    >


                        <!-- ============================= -->
                        <!-- Header -->
                        <!-- ============================= -->

                        <div class="chat-header">


                            <div class="chat-header-top">


                                <div class="chat-header-title">


                                    <div class="chat-coin-icon">

                                        <img
                                            src="${imagePath('chat-title.png')}"
                                            alt="優享福利"
                                        >

                                    </div>


                                    優享福利


                                </div>



                                <button
                                    type="button"
                                    class="modal-close"
                                    data-kgi-chatbot-close
                                    aria-label="關閉"
                                >

                                    ✕

                                </button>


                            </div>



                            <!-- 禮物 -->

                            <div class="gift-deco">

                                <img
                                    src="${imagePath('bg_gift.png')}"
                                    alt=""
                                >

                            </div>



                            <!-- 星星 -->

                            <span
                                class="star-deco s1"
                                aria-hidden="true"
                            >
                                ✦
                            </span>


                            <span
                                class="star-deco s3"
                                aria-hidden="true"
                            >
                                ✦
                            </span>


                        </div>



                        <!-- ============================= -->
                        <!-- 對話區 -->
                        <!-- ============================= -->

                        <div
                            class="chat-body"
                            id="kgiChatBody"
                        >


                            <!-- 初始訊息 -->

                            <div class="chatbody-bot-row">


                                <div class="chatbody-bot-msg-1">


                                    <div class="chatbody-bot-avatar">

                                        <img
                                            src="${imagePath('chat-icon.png')}"
                                            alt=""
                                        >

                                    </div>



                                    <div class="chatbody-bot-text">


                                        您好，歡迎來到【手續費優惠】專區 👋，您可以透過問答獲得手續費優惠詳情。 
                                        溫馨提醒本系統不會蒐集您的個資，如需洽詢真人客服，請於台股交易日透過
                                        「客服專線:(02)2389-0088 ‧ 0800-085-005 」(AM8:00~PM5:00)與我們聯繫📞 


                                    </div>


                                </div>


                            </div>



                            <!-- 推薦問題 -->

                            <div class="prompt-bubble">


                                點選查看【手續費優惠】，查看台美股交易的限時優惠！​


                                <button
                                    type="button"
                                    class="go-btn"
                                    data-kgi-question="q1"
                                >

                                    手續費優惠


                                    <span class="right-arrow">

                                        <img
                                            src="${imagePath('arrow_w.svg')}"
                                            class="btn-grid-img"
                                            alt=""
                                        >

                                    </span>


                                </button>


                            </div>


                        </div>



                        <!-- ============================= -->
                        <!-- 快速選單 -->
                        <!-- ============================= -->

                        <div class="quick-menu">


                            <div class="quick-menu-title">

                                更多服務快速清單

                            </div>



                            <div class="btn-grid">



                                <!-- 1 -->

                                <button
                                    type="button"
                                    data-kgi-question="q1"
                                >


                                    <img
                                        src="${imagePath('icon_1.svg')}"
                                        class="quick-menu-icon"
                                    >


                                    手續費優惠


                                    <span class="right-arrow">

                                        <img
                                            src="${imagePath('arrow.svg')}"
                                            class="btn-grid-img"
                                        >

                                    </span>


                                </button>



                                <!-- 2 -->

                                <button
                                    type="button"
                                    data-kgi-question="q5"
                                >


                                    <img
                                        src="${imagePath('icon_2.svg')}"
                                        class="quick-menu-icon"
                                    >


                                    最新活動


                                    <span class="right-arrow">

                                        <img
                                            src="${imagePath('arrow.svg')}"
                                            class="btn-grid-img"
                                        >

                                    </span>


                                </button>


                            </div>

                            <a href="https://chatservice.kgi.com.tw/Webhook/?eservice=a18" target="_blank" rel="noopener noreferrer">
                            <div class="quick-menu-footer">

                                智能客服
                                <span class="right-arrow">
                                        <img
                                            src="${imagePath('arrow.svg')}"
                                            class="btn-grid-img"
                                            alt=""
                                        >
                                </span>

                            </div>
                            </a>


                        </div>


                    </div>


                </div>


            </div>

        `;

    }



    // =========================================================
    // 4. DOM
    // =========================================================

    let root = null;
    let overlay = null;
    let chatBody = null;

    let lastFocusedElement = null;



    // =========================================================
    // 5. 加入機器人訊息
    // =========================================================

    function addBotMessage(html) {

        if (!chatBody) return;


        const row =
            document.createElement('div');


        row.className =
            'chatbody-bot-row';


        row.innerHTML = `

            <div class="chatbody-bot-msg-2">

                ${html}

            </div>

        `;


        chatBody.appendChild(row);


        return row;

    }
    function scrollToMessage(message) {

        if (!chatBody || !message) return;
    
        const top =
            message.offsetTop -
            chatBody.offsetTop;
    
        chatBody.scrollTo({
            top: top - 10,
            behavior: 'smooth'
        });
    }


    // =========================================================
    // 6. 加入使用者訊息
    // =========================================================

    function addUserMessage(text) {

        if (!chatBody) return;


        const row =
            document.createElement('div');


        row.className =
            'user-row';


        const bubble =
            document.createElement('div');


        bubble.className =
            'user-msg';


        bubble.textContent =
            text;


        row.appendChild(bubble);


        chatBody.appendChild(row);


        chatBody.scrollTop =
            chatBody.scrollHeight;

    }



    // =========================================================
    // 7. 顯示子選項
    // =========================================================

    function showSubOptions(options) {
        const wrap = document.createElement("div");
        wrap.className = "sub-options";

        options.forEach(opt => {

            const btn = document.createElement("button");
            btn.type = "button";
            btn.textContent = opt.text;

            btn.addEventListener("click", () => {
                // =========================
// 開戶
// =========================

if (opt.action === "openAccount") {

    const url =
        getOpenAccountUrl();

    window.open(
        url,
        "_blank",
        "noopener,noreferrer"
    );

    return;
}

                // =========================
                // 1. 外部連結
                // =========================
                if (opt.url) {

                    window.open(
                        opt.url,
                        "_blank",
                        "noopener,noreferrer"
                    );

                    return;
                }


                // =========================
                // 2. 前往下一個 QA
                // =========================
                if (opt.target) {

                    // 點擊後移除這組按鈕
                    wrap.remove();

                    showTargetQuestion(
                        opt.text,
                        opt.target
                    );

                    return;
                }

            });

            wrap.appendChild(btn);
        });

        chatBody.appendChild(wrap);
    }


    function showTargetQuestion(buttonText, target) {

        const item = qaData[target];
    
        if (!item) {
            console.warn(`找不到 QA：${target}`);
            return;
        }
    
        // 使用者訊息
        addUserMessage(buttonText);
    
        setTimeout(() => {
    
            // 新增 Bot 回答
            const message =
                addBotMessage(item.answer);
    
            // 下一層選項
            if (item.options) {
                showSubOptions(item.options);
            }
    
            // 捲到「這一則回答的開頭」
            requestAnimationFrame(() => {
    
                scrollToMessage(message);
    
            });
    
        }, 400);
    }
    function goToSection(event, id) {
        event.preventDefault();

        // 1. 關閉 popup
        closeChatbot();

        // 2. 找到當頁錨點
        const target = document.getElementById(id);

        if (!target) {
            console.warn(`找不到錨點：#${id}`);
            return;
        }

        // 3. 關閉 popup 後再捲動
        setTimeout(() => {
            target.scrollIntoView({
                behavior: "smooth",
                block: "start"
            });
        }, 300);
    }



    // =========================================================
    // 8. 問問題
    // =========================================================

    function askQuestion(key) {

        const item =
            qaData[key];
    
        if (!item) return;
    
    
        addUserMessage(
            item.question
        );
    
    
        window.setTimeout(
            function () {
    
                // 新增回答
                const message =
                    addBotMessage(
                        item.answer
                    );
    
    
                // 新增下一層按鈕
                if (item.options) {
    
                    showSubOptions(
                        item.options
                    );
    
                }
    
    
                // 捲到這一則回答的開頭
                requestAnimationFrame(() => {
    
                    scrollToMessage(message);
    
                });
    
            },
            650
        );
    }



    // =========================================================
    // 9. 開啟 Popup
    // =========================================================

    function openChatbot() {

        if (!overlay) return;


        lastFocusedElement =
            document.activeElement;


        overlay.classList.add(
            'is-open'
        );


        overlay.setAttribute(
            'aria-hidden',
            'false'
        );


        document.body.style.overflow =
            'hidden';



        const closeButton =
            overlay.querySelector(
                '[data-kgi-chatbot-close]'
            );


        if (closeButton) {

            window.setTimeout(
                function () {

                    closeButton.focus();

                },
                50
            );

        }

    }



    // =========================================================
    // 10. 關閉 Popup
    // =========================================================

    function closeChatbot() {

        if (!overlay) return;


        overlay.classList.remove(
            'is-open'
        );


        overlay.setAttribute(
            'aria-hidden',
            'true'
        );


        document.body.style.overflow =
            '';


        if (
            lastFocusedElement &&
            typeof lastFocusedElement.focus ===
            'function'
        ) {

            lastFocusedElement.focus();

        }

    }



    // =========================================================
    // 11. 綁定事件
    // =========================================================

    function bindEvents() {

        if (!root) return;



        root.addEventListener(
            'click',
            function (event) {


                // ------------------------------
                // 開啟
                // ------------------------------

                const openButton =
                    event.target.closest(
                        '[data-kgi-chatbot-open]'
                    );


                if (openButton) {

                    openChatbot();

                    return;

                }



                // ------------------------------
                // 關閉
                // ------------------------------

                const closeButton =
                    event.target.closest(
                        '[data-kgi-chatbot-close]'
                    );


                if (closeButton) {

                    closeChatbot();

                    return;

                }



                // ------------------------------
// 開戶
// ------------------------------

const accountButton =
event.target.closest(
    '[data-kgi-open-account]'
);

if (accountButton) {

event.preventDefault();

const url = getOpenAccountUrl();

window.open(
    url,
    '_blank',
    'noopener,noreferrer'
);

return;
}
                // ------------------------------
                // 問問題
                // ------------------------------

                const questionButton =
                    event.target.closest(
                        '[data-kgi-question]'
                    );


                if (questionButton) {


                    const key =
                        questionButton.dataset
                            .kgiQuestion;


                    askQuestion(key);


                }


            }
        );



        // 點背景關閉

        overlay.addEventListener(
            'click',
            function (event) {


                if (
                    event.target ===
                    overlay
                ) {

                    closeChatbot();

                }


            }
        );



        // ESC 關閉

        document.addEventListener(
            'keydown',
            function (event) {


                if (
                    event.key === 'Escape' &&
                    overlay.classList.contains(
                        'is-open'
                    )
                ) {

                    closeChatbot();

                }


            }
        );

    }



    // =========================================================
    // 12. Mount
    // =========================================================

    function mount() {


        // 已經存在就不要重複建立

        if (
            document.getElementById(
                'kgi-chatbot-root'
            )
        ) {

            return;

        }



        // 把整個 HTML 插入 body

        document.body.insertAdjacentHTML(
            'beforeend',
            createChatbotHTML()
        );



        root =
            document.getElementById(
                'kgi-chatbot-root'
            );


        overlay =
            document.getElementById(
                'kgiChatbotOverlay'
            );


        chatBody =
            document.getElementById(
                'kgiChatBody'
            );



        bindEvents();

    }



    // =========================================================
    // 13. 初始化
    // =========================================================

    function init() {


        if (
            document.readyState ===
            'loading'
        ) {


            document.addEventListener(
                'DOMContentLoaded',
                mount,
                {
                    once: true
                }
            );


        } else {


            mount();


        }

    }


    // =========================================================
    // 14. 取得目前活動頁 Source
    // =========================================================

    function getOpenAccountUrl() {

         // 如果該頁有另外指定，就優先使用
    if (config.openAccountUrl) {
        return config.openAccountUrl;
    }

    // 抓目前頁面 fixedBtn 的「開戶」連結
    const accountLink = document.querySelector(
        '.fixedBtn a[href*="eoa.kgi.com.tw/OOA/index.aspx"]'
    );

    if (accountLink) {

        console.log(
            'KGI Chatbot 開戶網址：',
            accountLink.href
        );

        return accountLink.href;
    }

    console.warn(
        'KGI Chatbot：找不到 fixedBtn 開戶連結'
    );

    return 'https://eoa.kgi.com.tw/OOA/index.aspx';
    }  



    // =========================================================
    // 15. 開放給外部頁面使用
    // =========================================================

    window.KGIChatbot = {

        init: init,

        open: openChatbot,

        close: closeChatbot,

        askQuestion: askQuestion

    };



    // 自動啟動

    init();


})();