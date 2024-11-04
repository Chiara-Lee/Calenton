export const FormHandlerModule = {
  init() {
    document.addEventListener('submit', async event => {
      if (event.target?.dataset?.dynamicForm === undefined) { return; }
        event.preventDefault();
        const form = event.target;
        const data = new FormData(form);
        const action = form.action;
        const method = form.method;
        const response = await fetch(action, {
          method,
          body: data,
          headers: { "Accept": "application/json" }
        });
        if (response.ok) {
          form.insertAdjacentHTML('afterend',
            document.querySelector(form.dataset.success).innerHTML);
        } else {
          form.insertAdjacentHTML('afterend',
            document.querySelector(form.dataset.error).innerHTML);
        }
        const message = form.nextElementSibling;
        if (REMOVE_FORM_ON_SUBMISSION) {
          form.remove();
        } else {
          form.reset();
          setTimeout(() => message.remove(), 10000);
        }
      });
  }
};
;
import Fuse from 'fuse.js'
import AcmeSearchSupport from "SearchSupport"

let index = null;
const MAX_SEARCH_RESULTS = 5;

export const SearchModule = {
  async init() {
    try {
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
        .map(x => `<a href="${x.item.url}">
          <img src="${x.item.cover || ""}" width="40" height="40">
          <h3>${x.item.title}</h3>
          <span>${x.item.content.substr(0,40)}</span>
        </a>`)
        .join("");
    } else {
      result.innerHTML = '';
    }
  },

  removeSearch() {
    document.querySelector("#search")?.remove();
  }
}
;
import { FormHandlerModule } from "./formHandler";
import { SearchModule } from "./search";

function init() {
  FormHandlerModule.init();
  SearchModule.init();
}

init();