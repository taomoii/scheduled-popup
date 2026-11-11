(function () {
  'use strict';

  function initScheduledCampaignPopup() {

  var scheduledCampaigns = [
    {
      id: 'countdown-2026',
      start: '2026-11-11T00:00:00+08:00',
      end: '2026-11-12T10:00:00+08:00',
      title: '最後倒數！',
      campaignName: '享投資選凱基',
      offer: '$500元 蝦皮全站優惠券',
      actionText: '立即登錄',
      actionHref: 'https://event.kgi.com.tw/news/event/rewards/index.aspx#gifts',
      deadline: '2026/12/31 23:50止'
    },
    {
      id: 'newyear-2027',
      start: '2027-01-12T10:00:00+08:00',
      end: '2026-04-01T00:00:00+08:00',
      title: '新年快樂！',
      campaignName: '享投資選凱基',
      offer: '$300元 超商禮券',
      actionText: '立即登錄',
      actionHref: 'https://event.kgi.com.tw/news/event/rewards/index.aspx#gifts',
      deadline: '2027/03/31 23:50止'
    }
  ];

  var popup = document.getElementById('scheduledCampaignPopup');
  if (!popup) return;

  var dialog = popup.querySelector('.popup-box');
  var title = popup.querySelector('.popup-title');
  var campaignName = popup.querySelector('.popup-name');
  var offer = popup.querySelector('.popup-offer');
  var action = popup.querySelector('.popup-btn');
  var deadline = popup.querySelector('.popup-deadline');
  var closeButtons = popup.querySelectorAll('[data-scheduled-popup-close]');
  var successModal = document.getElementById('myModal');
  var previousActiveElement = null;

  function isSuccessModalOpen() {
    return successModal && window.getComputedStyle(successModal).display !== 'none';
  }

  function getActiveCampaign(now) {
    var currentTime = now.getTime();

    return scheduledCampaigns.find(function (campaign) {
      var startTime = new Date(campaign.start).getTime();
      var endTime = new Date(campaign.end).getTime();
      return currentTime >= startTime && currentTime < endTime;
    });
  }

  function closeScheduledPopup(restoreFocus) {
    popup.hidden = true;
    document.documentElement.classList.remove('campaign-popup-open');
    document.body.classList.remove('campaign-popup-open');
    document.removeEventListener('keydown', handleKeydown);

    if (restoreFocus !== false && previousActiveElement && typeof previousActiveElement.focus === 'function') {
      previousActiveElement.focus();
    }
  }

  function handleKeydown(event) {
    if (event.key === 'Escape') {
      closeScheduledPopup();
      return;
    }

    if (event.key !== 'Tab') return;

    var focusableElements = dialog.querySelectorAll('button:not([disabled]), a[href]');
    if (!focusableElements.length) return;

    var firstElement = focusableElements[0];
    var lastElement = focusableElements[focusableElements.length - 1];

    if (event.shiftKey && document.activeElement === firstElement) {
      event.preventDefault();
      lastElement.focus();
    } else if (!event.shiftKey && document.activeElement === lastElement) {
      event.preventDefault();
      firstElement.focus();
    }
  }

  function openScheduledPopup(campaign) {
    if (isSuccessModalOpen()) return;

    previousActiveElement = document.activeElement;
    popup.setAttribute('data-campaign-id', campaign.id);
    title.textContent = campaign.title;
    campaignName.textContent = campaign.campaignName;
    offer.textContent = campaign.offer;
    action.textContent = campaign.actionText;
    action.setAttribute('href', campaign.actionHref);
    deadline.textContent = campaign.deadline;
    popup.hidden = false;
    document.documentElement.classList.add('campaign-popup-open');
    document.body.classList.add('campaign-popup-open');
    document.addEventListener('keydown', handleKeydown);

    window.requestAnimationFrame(function () {
      var closeButton = popup.querySelector('.popup-close');
      if (closeButton) closeButton.focus();
    });
  }

  closeButtons.forEach(function (button) {
    button.addEventListener('click', closeScheduledPopup);
  });

  action.addEventListener('click', closeScheduledPopup);

  if (successModal) {
    var successModalObserver = new MutationObserver(function () {
      if (isSuccessModalOpen() && !popup.hidden) {
        closeScheduledPopup(false);
      }
    });

    successModalObserver.observe(successModal, {
      attributes: true,
      attributeFilter: ['style', 'class']
    });
  }

  var activeCampaign = getActiveCampaign(new Date());

  /* 本機預覽：index_test.html?popupPreview=countdown-2026 */
  if (window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1') {
    var previewCampaignId = new URLSearchParams(window.location.search).get('popupPreview');
    var previewCampaign = scheduledCampaigns.find(function (item) {
      return item.id === previewCampaignId;
    });

    if (previewCampaign) activeCampaign = previewCampaign;
  }

  if (activeCampaign && !isSuccessModalOpen()) openScheduledPopup(activeCampaign);

  /* 測試用：Console 輸入 showScheduledCampaignPopup('countdown-2026') 或 showScheduledCampaignPopup('newyear-2027') */
  window.showScheduledCampaignPopup = function (campaignId) {
    var campaign = scheduledCampaigns.find(function (item) {
      return item.id === campaignId;
    });

    if (campaign) openScheduledPopup(campaign);
  };

  window.closeScheduledCampaignPopup = closeScheduledPopup;

  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initScheduledCampaignPopup, { once: true });
  } else {
    initScheduledCampaignPopup();
  }
})();
