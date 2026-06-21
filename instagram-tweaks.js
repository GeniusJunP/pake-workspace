// instagram-tweaks.js

const hideSuggestedAndSponsored = () => {
    document.querySelectorAll('article').forEach(article => {
        // 投稿のヘッダーは通常、<article> の最初の要素（または最初の2つの要素のいずれか）に含まれます。
        // キャプションやコメント内の「広告」という単語との誤検知を防ぐため、
        // 投稿の上部エリア（最初の2つの子要素）のテキストのみをチェックします。
        const children = Array.from(article.children);
        const headerText = children.slice(0, 2).map(child => child.textContent || '').join(' ');
        
        const isSponsored = headerText.includes('Sponsored') || 
                            headerText.includes('広告');

        // おすすめの投稿（Suggested for you）の判定
        const isSuggested = article.textContent.includes('Suggested for you') || 
                            article.textContent.includes('おすすめの投稿');

        if (isSponsored || isSuggested) {
            // display: none を使うと仮想スクロールの高さ計算が狂うため、
            // 高さを0にし、非表示にします。
            article.style.setProperty('height', '0px', 'important');
            article.style.setProperty('overflow', 'hidden', 'important');
            article.style.setProperty('margin', '0px', 'important');
            article.style.setProperty('padding', '0px', 'important');
            article.style.setProperty('border', 'none', 'important');
            article.style.setProperty('visibility', 'hidden', 'important');
        }
    });
};

// 初回実行
hideSuggestedAndSponsored();

// インフィニットスクロールに対応するため、DOMの変更を監視
const observer = new MutationObserver(hideSuggestedAndSponsored);
observer.observe(document.body, { childList: true, subtree: true });
