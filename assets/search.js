import Fuse from 'fuse.js';

import AcmeSearchSupport from './searchsupport.js';

let index = null;
const MAX_SEARCH_RESULTS = 5;

export const SearchModule = {
  async init() {
    try {
      const BASE_URL = window.location.origin;  // 确保 BASE_URL 正确指向根目录
      const response = await window.fetch(BASE_URL + "/index.json");
      if (!response.ok) {
        this.removeSearch();
        return;
      }
      let data = await response.json();
      index = new Fuse(data, {
        keys: [{
          name: 'title',
          weight: 20
        }, {
          name: 'tag',
          weight: 5
        }, {
          name: 'content'
        }]
      });
      document.addEventListener("input", this.showResults);
      AcmeSearchSupport(); 
    } catch (e) {
      this.removeSearch();
    }
  },

  showResults(event) {
    const searchBox = document.querySelector("#search input");
    if (event.target !== searchBox) {
      return;
    }
    const result = document.querySelector("#search div");
    if (searchBox.value.length > 0) {
      const results = index.search(searchBox.value);
      result.innerHTML = results
        .slice(0, MAX_SEARCH_RESULTS)
        .map(x => {
          // 检查封面是否存在
          const coverImage = x.item.cover ? x.item.cover : "default-image.jpg"; // 设置默认封面图片
          return `<a href="${x.item.url}">
            <img src="${coverImage}" width="40" height="40">
            <h3>${x.item.title}</h3>
            <span>${x.item.content.substr(0, 40)}</span>
          </a>`;
        })
        .join("");
    } else {
      result.innerHTML = '';
    }    
  },

  removeSearch() {
    document.querySelector("#search")?.remove();
  }
}
// 自动初始化搜索功能
SearchModule.init();
