// universal-tweaks.js

const unlockPinchZoom = () => {
    let meta = document.querySelector('meta[name="viewport"]');
    if (!meta) {
        meta = document.createElement('meta');
        meta.name = 'viewport';
        document.head.appendChild(meta);
    }
    meta.content = 'width=device-width, initial-scale=1.0, user-scalable=yes';
};
unlockPinchZoom();

// 動的遷移でメタタグが書き戻されるのを監視して常時ロック解除
new MutationObserver(() => {
    const m = document.querySelector('meta[name="viewport"]');
    if (m && m.content.includes('user-scalable=no')) {
        m.content = 'width=device-width, initial-scale=1.0, user-scalable=yes';
    }
}).observe(document.head, { childList: true, subtree: true });
