
/* ════════════════════════════════
     TRIGGER BUTTON (頁面上的觸發圖片)
  ════════════════════════════════ */
    .trigger-btn {
      background: linear-gradient(135deg, #4a90d9, #1a4fa8);
      border: none;
      border-radius: 16px;
      padding: 20px 32px;
      color: #fff;
      font-family: inherit;
      font-size: 16px;
      font-weight: 700;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 10px;
      box-shadow: 0 8px 24px rgba(26, 79, 168, .35);
      transition: transform .2s, box-shadow .2s;
    }

    .trigger-btn:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 32px rgba(26, 79, 168, .45);
    }

    .trigger-btn .trigger-icon {
      font-size: 24px;
    }

    /* ════════════════════════════════
     MODAL OVERLAY
  ════════════════════════════════ */
    .modal-overlay {
      display: none;
      /* hidden by default */
      position: fixed;
      inset: 0;
      z-index: 1000;
      background: rgba(10, 14, 42, 0.72);
      backdrop-filter: blur(4px);
      -webkit-backdrop-filter: blur(4px);
      justify-content: center;
      align-items: center;
      padding: 16px;
      /* fade-in animation */
      animation: overlayIn .25s ease;
    }

    .modal-overlay.is-open {
      display: flex;
    }

    @keyframes overlayIn {
      from {
        opacity: 0;
      }

      to {
        opacity: 1;
      }
    }

    /* ════════════════════════════════
     MODAL PANEL (彈跳視窗本體)
  ════════════════════════════════ */
    .modal-panel {
      width: 600px;
      height: 680px;
      max-width: 100%;
      border-radius: 20px;
      /*overflow: hidden;*/
      background: #fff;
      box-shadow: 0 24px 80px rgba(0, 0, 0, .45), 0 0 0 1px rgba(255, 255, 255, .1);
      animation: panelIn .3s cubic-bezier(.34, 1.3, .64, 1);
      position: relative;
    }

    @keyframes panelIn {
      from {
        opacity: 0;
        transform: scale(.88) translateY(20px);
      }

      to {
        opacity: 1;
        transform: scale(1) translateY(0);
      }
    }

    @media (max-width: 460px) {
      .modal-panel {
        height: 650px;
      }
    }
    @media (max-width: 375px) {
      .modal-panel {
        height: 560px;
      }
    }


.chatbot-button{
	background-color: #00000000;
    position: absolute;
    right: 0;
    top: 66%;
    position: fixed;
}

/* =========================
   Chatbot 金幣按鈕
========================= */

.chatbot-button {
    position: fixed;
    right: 20px;
    bottom: 30px;
    z-index: 999;

    width: 70px;
    padding: 0;

    background: transparent;
    border: 0;
    outline: 0;
    cursor: pointer;

    overflow: visible;

    /* hover 動畫放在外層 */
    transition: transform 0.3s ease;
	    display: flex;
    flex-direction: column;
    align-items: center;
}


/* Hover 放大整顆 */
.chatbot-button:hover {
    transform: scale(1.02);
}


/* 圖片自己負責金幣動畫 */
.chatbot-icon-img {
    display: block;
    height: auto;

    transform-origin: center center;

    animation: chatbotCoinMotion 3s ease-in-out infinite;

    will-change: transform;
	    margin-bottom: -20px;
}
.chatbot-icon-text {
	z-index: 1;
	position: relative;
}

/* Hover 時可以選擇繼續轉 */
.chatbot-button:hover .chatbot-icon-img {
    filter: brightness(1.02);
}


/* =========================
   轉圈 → 跳一下 → 休息
========================= */

@keyframes chatbotCoinMotion {

    /* 起始 */
    0% {
        transform:
            translateY(0)
            rotateY(0deg);
    }

    /* 轉半圈 */
    12% {
        transform:
            translateY(0)
            rotateY(180deg);
    }

    /* 完成一圈 */
    24% {
        transform:
            translateY(0)
            rotateY(360deg);
    }

    /* 開始往上跳 */
    32% {
        transform:
            translateY(-14px)
            rotateY(360deg);
    }

    /* 落下 */
    40% {
        transform:
            translateY(0)
            rotateY(360deg);
    }

    /* 小回彈 */
    45% {
        transform:
            translateY(-4px)
            rotateY(360deg);
    }

    /* 回原位 */
    50% {
        transform:
            translateY(0)
            rotateY(360deg);
    }

    /* 剩下時間停著 */
    100% {
        transform:
            translateY(0)
            rotateY(360deg);
    }
}


/* Hover 再稍微放大 */
.chatbot-button:hover .chatbot-icon-img {
    /*animation-play-state: paused;*/

    transform: scale(1.02);
}


/* 手機 */
@media (max-width: 767px) {

    .chatbot-button {
        width: 80px;
        right: 12px;
        bottom: 20px;
        scale: 0.8;
    }

}
@media (max-width: 460px) {

  .chatbot-button {
      right: 10px;
      bottom: -72%;
  }

}
@media (max-width: 390px) {

  .chatbot-button {
      bottom: -60%;
  }

}
@media (max-width: 375px) {

  .chatbot-button {
      bottom: 10%;
  }

}
    /* ── Header ── */
    .chat-header {
      background: linear-gradient(180deg, #2183f1 0%, #1a5bbf 90%, #005bac 100%);
      padding: 0px 15px 70px;
      position: relative;
      /*overflow: hidden;*/
      min-height: 96px;
      border-radius: 20px 20px 0 0;
    }

    .chat-header::before {
      content: '';
      position: absolute;
      top: -30px;
      right: -30px;
      width: 160px;
      height: 160px;
      background: radial-gradient(circle, rgba(255, 255, 255, .15) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .chat-header-top {
      display: flex;
      align-items: center;
      justify-content: space-between;
      position: relative;
      top: 20px;
      z-index: 2;
    }

    /*.chat-header-top::before {
    content: '';
    position: absolute;
    top: 10px;
    left: -17px;
    width: 230px;
    height: 51px;
    background: #fff;
    border-radius: 20px 20px 0 0;
    z-index: 1;
    border: 1px solid #1f57b0;
    border-bottom: none;
}
*/
    .chat-header-title {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 600;
      font-size: 22px;
      color: #fff;
      z-index: 2;
      padding: 8px 20px;
      letter-spacing: 2px;
    }

    .chat-coin-icon {
      width: 28px;
      height: 28px;

      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 14px;

    }

    /* ── X Close button (右上角) ── */
    .modal-close {
      background: rgb(255 255 255 / 90%);
      border: none;
      color: #00367c;
      width: 28px;
      height: 28px;
      border-radius: 50%;
      cursor: pointer;
      font-size: 15px;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background .2s, transform .15s;
      flex-shrink: 0;
      position: relative;
      z-index: 10;
    }

    .modal-close:hover {
      background: rgba(255, 255, 255, .4);
      transform: rotate(90deg);
    }

    /* Gift & stars deco */
    .gift-deco {
      position: absolute;
      right: 10px;
      top: -57px;
      z-index: 1;
      pointer-events: none;
      /* 預設先縮小、往下 */
      opacity: 0;
      transform: translateY(35px) scale(.75) rotate(4deg);
      transform-origin: center bottom;
    }

    .modal-overlay.is-open .gift-deco {
      animation: giftPopUp .75s cubic-bezier(.2, 1.4, .4, 1) .15s forwards;
    }
    .modal-overlay.is-open .gift-deco img {
      animation:
        giftFloat 3s ease-in-out 1s infinite;
    }

    @media screen and (max-width: 460px) {
      .gift-deco {
        top: -18px;
        scale: 0.9;
        right: -10px;
      }

      .gift-deco img {
        width: 240px;
      }
    }


    @keyframes giftPopUp {
      0% {
        opacity: 0;
        transform: translateY(35px) scale(.75) rotate(4deg);
      }
    
      55% {
        opacity: 1;
        transform: translateY(-12px) scale(1.08) rotate(-2deg);
      }
    
      75% {
        transform: translateY(4px) scale(.97) rotate(1deg);
      }
    
      100% {
        opacity: 1;
        transform: translateY(0) scale(1) rotate(0);
      }
    }
    
    
    /* 彈出完成後持續漂浮 */
    @keyframes giftFloat {
      0%,
      100% {
        transform: translateY(0) rotate(-1deg);
      }
    
      50% {
        transform: translateY(-3px) rotate(1deg);
      }
    }
    
    
    .modal-overlay.is-open .gift-deco {
      animation:
        giftPopUp .75s cubic-bezier(.2, 1.4, .4, 1) .15s forwards,
        giftFloat 2.5s ease-in-out 1s infinite alternate;
    }

    .star-deco {
      position: absolute;
      color: #ffd700;
      z-index: 2;
      pointer-events: none;
      animation: twinkle 2s ease-in-out infinite alternate;
    }

    .star-deco.s1 {
      top: 6px;
      right: 7px;
      font-size: 20px;
      animation-delay: .3s;
    }

    .star-deco.s2 {
      top: 56px;
      right: 80px;
      font-size: 10px;
      animation-delay: .8s;
    }

    .star-deco.s3 {
      top: 30px;
      left: 52%;
      font-size: 12px;
      animation-delay: 1.2s;
    }

    @keyframes twinkle {
      from {
        opacity: .4;
        transform: scale(.9);
      }

      to {
        opacity: 1;
        transform: scale(1.15);
      }
    }

    /* ── Chat body ── */
    .chat-body {
      background: #fff;
      padding: 16px;
      max-height: 500px;
      overflow-y: auto;
      margin-top: -70px;
      border-radius: 0 20px 0 0;
      position: relative;
      z-index: 1;
      height: 400px;
    }

    .chat-body::-webkit-scrollbar {
      width: 4px;
    }

    .chat-body::-webkit-scrollbar-track {
      background: transparent;
    }

    .chat-body::-webkit-scrollbar-thumb {
      background: #c5d3e8;
      border-radius: 4px;
    }
    @media screen and (max-width: 375px) {
   .chat-body {
      height: 300px;
   }
    }
    .chatbody-bot-row {
      display: flex;
      align-items: flex-start;
      gap: 8px;
      margin-bottom: 12px;
      animation: chatMessageIn .35s cubic-bezier(.22, 1, .36, 1) both;
    }

    .chatbody-bot-avatar {
      width: 34px;
      height: 34px;

      border-radius: 50%;
      flex-shrink: 0;
      font-size: 16px;
      /*box-shadow: 0 2px 8px rgba(30,75,180,.3);*/
    }

    .chatbody-bot-msg-1 {
      background: linear-gradient(180deg, #fff8f2, #fff);
      color: #333;
      border-radius: 2px 10px 10px 10px;
      padding: 10px 14px;
      font-size: 14px;
      line-height: 1.65;
      max-width: calc(100% - 45px);
      /*box-shadow: 0 2px 8px rgba(0,0,0,.06);*/
      border: 1px solid #ffd7a8;
      line-height: 24px;
      display: flex;
     
    }
    .chatbody-bot-msg-2 {
      background: linear-gradient(180deg, #fff8f2, #fff);
      color: #333;
      border-radius: 2px 10px 10px 10px;
      padding: 10px 14px;
      font-size: 14px;
      line-height: 1.65;
      max-width: calc(100% - 45px);
      /*box-shadow: 0 2px 8px rgba(0,0,0,.06);*/
      border: 1px solid #ffd7a8;
      line-height: 24px;
      display: flex;
      flex-direction: column;
     
    }
    .chatbody-bot-text {
      margin-left: 20px;
    }

    .chatbody-bot-msg-2 a{
      color:#00367c;
    }
    .chatbody-bot-msg-2 .qa-open-btn {
      color: #f15a21;
      font-weight: 700;
      text-decoration: none;
      background: linear-gradient(180deg, #1681ff, #409aff);
      color: #fff;
      border: none;
      border-radius: 20px;
      text-align: center;
      padding: 6px 14px;
      transition: opacity .3s, transform .15s;
    }

    .chatbody-bot-msg-2 .qa-open-btn:hover {
      opacity: .85;
      transform: scale(1.02);
    }
    .chatbody-bot-msg-2 .highlight {
      color: #f15a21;
      font-weight: 500;
    }

    .user-row {
      display: flex;
      justify-content: flex-end;
      margin-bottom: 12px;
      animation: userMessageIn .3s cubic-bezier(.22, 1, .36, 1) both;
    }


@keyframes chatMessageIn {
  from {
    opacity: 0;
    transform: translateY(10px) scale(.98);
  }

  to {
    opacity: 1;
    transform: translateY(0) scale(1);
  }
}

@keyframes userMessageIn {
  from {
    opacity: 0;
    transform: translateX(10px);
  }

  to {
    opacity: 1;
    transform: translateX(0);
  }
}
    .user-msg {
      background: linear-gradient(180deg, #1681ff, #409aff);
      color: #fff;
      border-radius: 20px 2px 20px 20px;
      padding: 10px 14px;
      font-size: 14px;
      line-height: 1.65;
      max-width: 78%;
      /*box-shadow: 0 4px 12px rgba(30,75,180,.3);*/

    }

    .prompt-bubble {
      background: #fff;
      border: 1px solid #ffd7a8;
      color: #333;
      border-radius: 10px;
      padding: 10px 14px;
      font-size: 14px;
      line-height: 1.6;
      margin-bottom: 12px;
      /*box-shadow: 0 2px 8px rgba(0,0,0,.06);*/
      display: flex;
      align-items: center;
      justify-content: space-between;
      max-width: calc(100% - 45px);
    }

    @media screen and (max-width: 460px) {
      
      
      .prompt-bubble {
        max-width: calc(100% - 0px);
      }
    }

    .go-btn {
      background: linear-gradient(180deg, #1681ff, #409aff);
      color: #fff;
      border: none;
      border-radius: 20px;
      padding: 6px 14px;
      font-size: 14px;
      font-family: inherit;
      cursor: pointer;
      white-space: nowrap;
      margin-left: 10px;
      flex-shrink: 0;
      transition: opacity .2s, transform .15s;
    }

    .go-btn:hover {
      opacity: .85;
      transform: scale(1.04);
    }

    /* ── Quick menu ── */
    .quick-menu {
      background: #e2edff;
      bottom: 0;
      width: 100%;
      border-radius: 0 0 20px 20px;
      border-top: 1px solid #1b5fc4;
    }

    .quick-menu-title {
      text-align: center;
      font-size: 14px;
      color: #000;
      display: flex;
      align-items: center;
      gap: 6px;
      justify-content: center;    
      letter-spacing: 2px;
		  padding: 10px 0 0 0;
    }

    .quick-menu-title::before,
    .quick-menu-title::after {
      content: '✦';
      color: #f59e0b;
      font-size: 10px;
    }
    .quick-menu-footer {
      text-align: center;
      font-size: 14px;
      color: #000;
      display: flex;
      align-items: center;
      justify-content: center; 
      letter-spacing: 2px;
		  padding: 0 0 10px 0;
    }
    .btn-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 12px;
	  padding: 20px;
    }

    .btn-grid-img {
      position: relative;
      width: 5px;
    }

    .btn-grid button {
      background: linear-gradient(180deg, #fff, #dbe6f8);
      color: #00367c;
      border: 1px solid #a0c8ff;
      border-radius: 10px;
      padding: 9px 6px;
      font-size: 16px;
      font-family: inherit;
      font-weight: 300;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 4px;
      box-shadow: 0 3px 5px rgba(26, 79, 168, .3);
      transition: opacity .2s, transform .15s, box-shadow .2s;
      position: relative;
      overflow: hidden;
    }
    .btn-grid button .quick-menu-icon{
      width: 20px;
    }
    /*.btn-grid button::after {
    content: '';
    position: absolute;
    top: 0; right: 0;
    width: 12px; height: 12px;
    background: linear-gradient(135deg, #ffd700, #f59e0b);
    clip-path: polygon(100% 0, 0 0, 100% 100%);
  }
    */

    .btn-grid button:hover {
      opacity: .9;
      transform: translateY(-1px);
      box-shadow: 0 6px 16px rgba(26, 79, 168, .4);
      filter: opacity(0.9);
    }
    @media screen and (max-width: 460px) {
      .btn-grid {
        padding: 10px;
      }
    }

    .sub-options {
      display: flex;
      flex-direction: column;
      gap: 6px;
      margin-left: 42px;
      margin-bottom: 12px;
    }

    .sub-options button {
      background: #fff;
      border: 1.5px solid #4a90d9;
      color: #1a5bbf;
      border-radius: 20px;
      padding: 10px 14px;
      font-size: 14px;
      font-family: inherit;
      cursor: pointer;
      text-align: left;
      transition: background .2s, color .2s;
      opacity: 0;
      transform: translateY(8px);
      animation: optionIn .35s cubic-bezier(.22, 1, .36, 1) forwards;
    }

    sub-options button:nth-child(1) {
      animation-delay: .08s;
    }
    
    .sub-options button:nth-child(2) {
      animation-delay: .16s;
    }
    
    .sub-options button:nth-child(3) {
      animation-delay: .24s;
    }
    
    @keyframes optionIn {
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
    .sub-options button:hover {
      background: #1a5bbf;
      color: #fff;
    }

    .right-arrow {
      display: inline-block;
      animation: right-arrow 1s ease infinite alternate;
      padding-top: 2px;
    }

    @keyframes right-arrow {

      0%,
      100% {
        transform: translateX(0px);
      }

      40% {
        transform: translateX(2px);
      }

      60% {
        transform: translateX(0px);
      }
    }

