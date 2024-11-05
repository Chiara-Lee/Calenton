(()=>{var ie={init(){document.addEventListener("submit",async t=>{if(t.target?.dataset?.dynamicForm===void 0)return;t.preventDefault();let e=t.target,s=new FormData(e),n=e.action,r=e.method;(await fetch(n,{method:r,body:s,headers:{Accept:"application/json"}})).ok?e.insertAdjacentHTML("afterend",document.querySelector(e.dataset.success).innerHTML):e.insertAdjacentHTML("afterend",document.querySelector(e.dataset.error).innerHTML);let c=e.nextElementSibling;REMOVE_FORM_ON_SUBMISSION?e.remove():(e.reset(),setTimeout(()=>c.remove(),1e4))})}};function A(t){return Array.isArray?Array.isArray(t):fe(t)==="[object Array]"}var Ee=1/0;function we(t){if(typeof t=="string")return t;let e=t+"";return e=="0"&&1/t==-Ee?"-0":e}function Ae(t){return t==null?"":we(t)}function _(t){return typeof t=="string"}function ue(t){return typeof t=="number"}function Le(t){return t===!0||t===!1||xe(t)&&fe(t)=="[object Boolean]"}function de(t){return typeof t=="object"}function xe(t){return de(t)&&t!==null}function m(t){return t!=null}function W(t){return!t.trim().length}function fe(t){return t==null?t===void 0?"[object Undefined]":"[object Null]":Object.prototype.toString.call(t)}var Ie="Incorrect 'index' type",be=t=>`Invalid value for key ${t}`,Re=t=>`Pattern length exceeds max of ${t}.`,ke=t=>`Missing ${t} property in key`,ve=t=>`Property 'weight' in key '${t}' must be a positive integer`,ce=Object.prototype.hasOwnProperty,B=class{constructor(e){this._keys=[],this._keyMap={};let s=0;e.forEach(n=>{let r=ge(n);s+=r.weight,this._keys.push(r),this._keyMap[r.id]=r,s+=r.weight}),this._keys.forEach(n=>{n.weight/=s})}get(e){return this._keyMap[e]}keys(){return this._keys}toJSON(){return JSON.stringify(this._keys)}};function ge(t){let e=null,s=null,n=null,r=1,i=null;if(_(t)||A(t))n=t,e=oe(t),s=U(t);else{if(!ce.call(t,"name"))throw new Error(ke("name"));let c=t.name;if(n=c,ce.call(t,"weight")&&(r=t.weight,r<=0))throw new Error(ve(c));e=oe(c),s=U(c),i=t.getFn}return{path:e,id:s,weight:r,src:n,getFn:i}}function oe(t){return A(t)?t:t.split(".")}function U(t){return A(t)?t.join("."):t}function Oe(t,e){let s=[],n=!1,r=(i,c,o)=>{if(m(i))if(!c[o])s.push(i);else{let a=c[o],h=i[a];if(!m(h))return;if(o===c.length-1&&(_(h)||ue(h)||Le(h)))s.push(Ae(h));else if(A(h)){n=!0;for(let l=0,d=h.length;l<d;l+=1)r(h[l],c,o+1)}else c.length&&r(h,c,o+1)}};return r(t,_(e)?e.split("."):e,0),n?s:s[0]}var $e={includeMatches:!1,findAllMatches:!1,minMatchCharLength:1},Ne={isCaseSensitive:!1,includeScore:!1,keys:[],shouldSort:!0,sortFn:(t,e)=>t.score===e.score?t.idx<e.idx?-1:1:t.score<e.score?-1:1},Te={location:0,threshold:.6,distance:100},Ce={useExtendedSearch:!1,getFn:Oe,ignoreLocation:!1,ignoreFieldNorm:!1,fieldNormWeight:1},u={...Ne,...$e,...Te,...Ce},je=/[^ ]+/g;function Fe(t=1,e=3){let s=new Map,n=Math.pow(10,e);return{get(r){let i=r.match(je).length;if(s.has(i))return s.get(i);let c=1/Math.pow(i,.5*t),o=parseFloat(Math.round(c*n)/n);return s.set(i,o),o},clear(){s.clear()}}}var $=class{constructor({getFn:e=u.getFn,fieldNormWeight:s=u.fieldNormWeight}={}){this.norm=Fe(s,3),this.getFn=e,this.isCreated=!1,this.setIndexRecords()}setSources(e=[]){this.docs=e}setIndexRecords(e=[]){this.records=e}setKeys(e=[]){this.keys=e,this._keysMap={},e.forEach((s,n)=>{this._keysMap[s.id]=n})}create(){this.isCreated||!this.docs.length||(this.isCreated=!0,_(this.docs[0])?this.docs.forEach((e,s)=>{this._addString(e,s)}):this.docs.forEach((e,s)=>{this._addObject(e,s)}),this.norm.clear())}add(e){let s=this.size();_(e)?this._addString(e,s):this._addObject(e,s)}removeAt(e){this.records.splice(e,1);for(let s=e,n=this.size();s<n;s+=1)this.records[s].i-=1}getValueForItemAtKeyId(e,s){return e[this._keysMap[s]]}size(){return this.records.length}_addString(e,s){if(!m(e)||W(e))return;let n={v:e,i:s,n:this.norm.get(e)};this.records.push(n)}_addObject(e,s){let n={i:s,$:{}};this.keys.forEach((r,i)=>{let c=r.getFn?r.getFn(e):this.getFn(e,r.path);if(m(c)){if(A(c)){let o=[],a=[{nestedArrIndex:-1,value:c}];for(;a.length;){let{nestedArrIndex:h,value:l}=a.pop();if(m(l))if(_(l)&&!W(l)){let d={v:l,i:h,n:this.norm.get(l)};o.push(d)}else A(l)&&l.forEach((d,f)=>{a.push({nestedArrIndex:f,value:d})})}n.$[i]=o}else if(_(c)&&!W(c)){let o={v:c,n:this.norm.get(c)};n.$[i]=o}}}),this.records.push(n)}toJSON(){return{keys:this.keys,records:this.records}}};function pe(t,e,{getFn:s=u.getFn,fieldNormWeight:n=u.fieldNormWeight}={}){let r=new $({getFn:s,fieldNormWeight:n});return r.setKeys(t.map(ge)),r.setSources(e),r.create(),r}function He(t,{getFn:e=u.getFn,fieldNormWeight:s=u.fieldNormWeight}={}){let{keys:n,records:r}=t,i=new $({getFn:e,fieldNormWeight:s});return i.setKeys(n),i.setIndexRecords(r),i}function C(t,{errors:e=0,currentLocation:s=0,expectedLocation:n=0,distance:r=u.distance,ignoreLocation:i=u.ignoreLocation}={}){let c=e/t.length;if(i)return c;let o=Math.abs(n-s);return r?c+o/r:o?1:c}function Pe(t=[],e=u.minMatchCharLength){let s=[],n=-1,r=-1,i=0;for(let c=t.length;i<c;i+=1){let o=t[i];o&&n===-1?n=i:!o&&n!==-1&&(r=i-1,r-n+1>=e&&s.push([n,r]),n=-1)}return t[i-1]&&i-n>=e&&s.push([n,i-1]),s}var k=32;function De(t,e,s,{location:n=u.location,distance:r=u.distance,threshold:i=u.threshold,findAllMatches:c=u.findAllMatches,minMatchCharLength:o=u.minMatchCharLength,includeMatches:a=u.includeMatches,ignoreLocation:h=u.ignoreLocation}={}){if(e.length>k)throw new Error(Re(k));let l=e.length,d=t.length,f=Math.max(0,Math.min(n,d)),g=i,p=f,M=o>1||a,b=M?Array(d):[],w;for(;(w=t.indexOf(e,p))>-1;){let y=C(e,{currentLocation:w,expectedLocation:f,distance:r,ignoreLocation:h});if(g=Math.min(y,g),p=w+l,M){let x=0;for(;x<l;)b[w+x]=1,x+=1}}p=-1;let v=[],R=1,N=l+d,_e=1<<l-1;for(let y=0;y<l;y+=1){let x=0,I=N;for(;x<I;)C(e,{errors:y,currentLocation:f+I,expectedLocation:f,distance:r,ignoreLocation:h})<=g?x=I:N=I,I=Math.floor((N-x)/2+x);N=I;let ne=Math.max(1,f-I+1),K=c?d:Math.min(f+I,d)+l,O=Array(K+2);O[K+1]=(1<<y)-1;for(let S=K;S>=ne;S-=1){let T=S-1,re=s[t.charAt(T)];if(M&&(b[T]=+!!re),O[S]=(O[S+1]<<1|1)&re,y&&(O[S]|=(v[S+1]|v[S])<<1|1|v[S+1]),O[S]&_e&&(R=C(e,{errors:y,currentLocation:T,expectedLocation:f,distance:r,ignoreLocation:h}),R<=g)){if(g=R,p=T,p<=f)break;ne=Math.max(1,2*f-p)}}if(C(e,{errors:y+1,currentLocation:f,expectedLocation:f,distance:r,ignoreLocation:h})>g)break;v=O}let D={isMatch:p>=0,score:Math.max(.001,R)};if(M){let y=Pe(b,o);y.length?a&&(D.indices=y):D.isMatch=!1}return D}function Ke(t){let e={};for(let s=0,n=t.length;s<n;s+=1){let r=t.charAt(s);e[r]=(e[r]||0)|1<<n-s-1}return e}var j=class{constructor(e,{location:s=u.location,threshold:n=u.threshold,distance:r=u.distance,includeMatches:i=u.includeMatches,findAllMatches:c=u.findAllMatches,minMatchCharLength:o=u.minMatchCharLength,isCaseSensitive:a=u.isCaseSensitive,ignoreLocation:h=u.ignoreLocation}={}){if(this.options={location:s,threshold:n,distance:r,includeMatches:i,findAllMatches:c,minMatchCharLength:o,isCaseSensitive:a,ignoreLocation:h},this.pattern=a?e:e.toLowerCase(),this.chunks=[],!this.pattern.length)return;let l=(f,g)=>{this.chunks.push({pattern:f,alphabet:Ke(f),startIndex:g})},d=this.pattern.length;if(d>k){let f=0,g=d%k,p=d-g;for(;f<p;)l(this.pattern.substr(f,k),f),f+=k;if(g){let M=d-k;l(this.pattern.substr(M),M)}}else l(this.pattern,0)}searchIn(e){let{isCaseSensitive:s,includeMatches:n}=this.options;if(s||(e=e.toLowerCase()),this.pattern===e){let p={isMatch:!0,score:0};return n&&(p.indices=[[0,e.length-1]]),p}let{location:r,distance:i,threshold:c,findAllMatches:o,minMatchCharLength:a,ignoreLocation:h}=this.options,l=[],d=0,f=!1;this.chunks.forEach(({pattern:p,alphabet:M,startIndex:b})=>{let{isMatch:w,score:v,indices:R}=De(e,p,M,{location:r+b,distance:i,threshold:c,findAllMatches:o,minMatchCharLength:a,includeMatches:n,ignoreLocation:h});w&&(f=!0),d+=v,w&&R&&(l=[...l,...R])});let g={isMatch:f,score:f?d/this.chunks.length:1};return f&&n&&(g.indices=l),g}},E=class{constructor(e){this.pattern=e}static isMultiMatch(e){return ae(e,this.multiRegex)}static isSingleMatch(e){return ae(e,this.singleRegex)}search(){}};function ae(t,e){let s=t.match(e);return s?s[1]:null}var V=class extends E{constructor(e){super(e)}static get type(){return"exact"}static get multiRegex(){return/^="(.*)"$/}static get singleRegex(){return/^=(.*)$/}search(e){let s=e===this.pattern;return{isMatch:s,score:s?0:1,indices:[0,this.pattern.length-1]}}},Y=class extends E{constructor(e){super(e)}static get type(){return"inverse-exact"}static get multiRegex(){return/^!"(.*)"$/}static get singleRegex(){return/^!(.*)$/}search(e){let n=e.indexOf(this.pattern)===-1;return{isMatch:n,score:n?0:1,indices:[0,e.length-1]}}},G=class extends E{constructor(e){super(e)}static get type(){return"prefix-exact"}static get multiRegex(){return/^\^"(.*)"$/}static get singleRegex(){return/^\^(.*)$/}search(e){let s=e.startsWith(this.pattern);return{isMatch:s,score:s?0:1,indices:[0,this.pattern.length-1]}}},z=class extends E{constructor(e){super(e)}static get type(){return"inverse-prefix-exact"}static get multiRegex(){return/^!\^"(.*)"$/}static get singleRegex(){return/^!\^(.*)$/}search(e){let s=!e.startsWith(this.pattern);return{isMatch:s,score:s?0:1,indices:[0,e.length-1]}}},X=class extends E{constructor(e){super(e)}static get type(){return"suffix-exact"}static get multiRegex(){return/^"(.*)"\$$/}static get singleRegex(){return/^(.*)\$$/}search(e){let s=e.endsWith(this.pattern);return{isMatch:s,score:s?0:1,indices:[e.length-this.pattern.length,e.length-1]}}},Q=class extends E{constructor(e){super(e)}static get type(){return"inverse-suffix-exact"}static get multiRegex(){return/^!"(.*)"\$$/}static get singleRegex(){return/^!(.*)\$$/}search(e){let s=!e.endsWith(this.pattern);return{isMatch:s,score:s?0:1,indices:[0,e.length-1]}}},F=class extends E{constructor(e,{location:s=u.location,threshold:n=u.threshold,distance:r=u.distance,includeMatches:i=u.includeMatches,findAllMatches:c=u.findAllMatches,minMatchCharLength:o=u.minMatchCharLength,isCaseSensitive:a=u.isCaseSensitive,ignoreLocation:h=u.ignoreLocation}={}){super(e),this._bitapSearch=new j(e,{location:s,threshold:n,distance:r,includeMatches:i,findAllMatches:c,minMatchCharLength:o,isCaseSensitive:a,ignoreLocation:h})}static get type(){return"fuzzy"}static get multiRegex(){return/^"(.*)"$/}static get singleRegex(){return/^(.*)$/}search(e){return this._bitapSearch.searchIn(e)}},H=class extends E{constructor(e){super(e)}static get type(){return"include"}static get multiRegex(){return/^'"(.*)"$/}static get singleRegex(){return/^'(.*)$/}search(e){let s=0,n,r=[],i=this.pattern.length;for(;(n=e.indexOf(this.pattern,s))>-1;)s=n+i,r.push([n,s-1]);let c=!!r.length;return{isMatch:c,score:c?0:1,indices:r}}},J=[V,H,G,z,Q,X,Y,F],he=J.length,We=/ +(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)/,Be="|";function Ue(t,e={}){return t.split(Be).map(s=>{let n=s.trim().split(We).filter(i=>i&&!!i.trim()),r=[];for(let i=0,c=n.length;i<c;i+=1){let o=n[i],a=!1,h=-1;for(;!a&&++h<he;){let l=J[h],d=l.isMultiMatch(o);d&&(r.push(new l(d,e)),a=!0)}if(!a)for(h=-1;++h<he;){let l=J[h],d=l.isSingleMatch(o);if(d){r.push(new l(d,e));break}}}return r})}var Ve=new Set([F.type,H.type]),Z=class{constructor(e,{isCaseSensitive:s=u.isCaseSensitive,includeMatches:n=u.includeMatches,minMatchCharLength:r=u.minMatchCharLength,ignoreLocation:i=u.ignoreLocation,findAllMatches:c=u.findAllMatches,location:o=u.location,threshold:a=u.threshold,distance:h=u.distance}={}){this.query=null,this.options={isCaseSensitive:s,includeMatches:n,minMatchCharLength:r,findAllMatches:c,ignoreLocation:i,location:o,threshold:a,distance:h},this.pattern=s?e:e.toLowerCase(),this.query=Ue(this.pattern,this.options)}static condition(e,s){return s.useExtendedSearch}searchIn(e){let s=this.query;if(!s)return{isMatch:!1,score:1};let{includeMatches:n,isCaseSensitive:r}=this.options;e=r?e:e.toLowerCase();let i=0,c=[],o=0;for(let a=0,h=s.length;a<h;a+=1){let l=s[a];c.length=0,i=0;for(let d=0,f=l.length;d<f;d+=1){let g=l[d],{isMatch:p,indices:M,score:b}=g.search(e);if(p){if(i+=1,o+=b,n){let w=g.constructor.type;Ve.has(w)?c=[...c,...M]:c.push(M)}}else{o=0,i=0,c.length=0;break}}if(i){let d={isMatch:!0,score:o/i};return n&&(d.indices=c),d}}return{isMatch:!1,score:1}}},q=[];function Ye(...t){q.push(...t)}function ee(t,e){for(let s=0,n=q.length;s<n;s+=1){let r=q[s];if(r.condition(t,e))return new r(t,e)}return new j(t,e)}var P={AND:"$and",OR:"$or"},te={PATH:"$path",PATTERN:"$val"},se=t=>!!(t[P.AND]||t[P.OR]),Ge=t=>!!t[te.PATH],ze=t=>!A(t)&&de(t)&&!se(t),le=t=>({[P.AND]:Object.keys(t).map(e=>({[e]:t[e]}))});function me(t,e,{auto:s=!0}={}){let n=r=>{let i=Object.keys(r),c=Ge(r);if(!c&&i.length>1&&!se(r))return n(le(r));if(ze(r)){let a=c?r[te.PATH]:i[0],h=c?r[te.PATTERN]:r[a];if(!_(h))throw new Error(be(a));let l={keyId:U(a),pattern:h};return s&&(l.searcher=ee(h,e)),l}let o={children:[],operator:i[0]};return i.forEach(a=>{let h=r[a];A(h)&&h.forEach(l=>{o.children.push(n(l))})}),o};return se(t)||(t=le(t)),n(t)}function Xe(t,{ignoreFieldNorm:e=u.ignoreFieldNorm}){t.forEach(s=>{let n=1;s.matches.forEach(({key:r,norm:i,score:c})=>{let o=r?r.weight:null;n*=Math.pow(c===0&&o?Number.EPSILON:c,(o||1)*(e?1:i))}),s.score=n})}function Qe(t,e){let s=t.matches;e.matches=[],m(s)&&s.forEach(n=>{if(!m(n.indices)||!n.indices.length)return;let{indices:r,value:i}=n,c={indices:r,value:i};n.key&&(c.key=n.key.src),n.idx>-1&&(c.refIndex=n.idx),e.matches.push(c)})}function Je(t,e){e.score=t.score}function Ze(t,e,{includeMatches:s=u.includeMatches,includeScore:n=u.includeScore}={}){let r=[];return s&&r.push(Qe),n&&r.push(Je),t.map(i=>{let{idx:c}=i,o={item:e[c],refIndex:c};return r.length&&r.forEach(a=>{a(i,o)}),o})}var L=class{constructor(e,s={},n){this.options={...u,...s},this.options.useExtendedSearch,this._keyStore=new B(this.options.keys),this.setCollection(e,n)}setCollection(e,s){if(this._docs=e,s&&!(s instanceof $))throw new Error(Ie);this._myIndex=s||pe(this.options.keys,this._docs,{getFn:this.options.getFn,fieldNormWeight:this.options.fieldNormWeight})}add(e){m(e)&&(this._docs.push(e),this._myIndex.add(e))}remove(e=()=>!1){let s=[];for(let n=0,r=this._docs.length;n<r;n+=1){let i=this._docs[n];e(i,n)&&(this.removeAt(n),n-=1,r-=1,s.push(i))}return s}removeAt(e){this._docs.splice(e,1),this._myIndex.removeAt(e)}getIndex(){return this._myIndex}search(e,{limit:s=-1}={}){let{includeMatches:n,includeScore:r,shouldSort:i,sortFn:c,ignoreFieldNorm:o}=this.options,a=_(e)?_(this._docs[0])?this._searchStringList(e):this._searchObjectList(e):this._searchLogical(e);return Xe(a,{ignoreFieldNorm:o}),i&&a.sort(c),ue(s)&&s>-1&&(a=a.slice(0,s)),Ze(a,this._docs,{includeMatches:n,includeScore:r})}_searchStringList(e){let s=ee(e,this.options),{records:n}=this._myIndex,r=[];return n.forEach(({v:i,i:c,n:o})=>{if(!m(i))return;let{isMatch:a,score:h,indices:l}=s.searchIn(i);a&&r.push({item:i,idx:c,matches:[{score:h,value:i,norm:o,indices:l}]})}),r}_searchLogical(e){let s=me(e,this.options),n=(o,a,h)=>{if(!o.children){let{keyId:d,searcher:f}=o,g=this._findMatches({key:this._keyStore.get(d),value:this._myIndex.getValueForItemAtKeyId(a,d),searcher:f});return g&&g.length?[{idx:h,item:a,matches:g}]:[]}let l=[];for(let d=0,f=o.children.length;d<f;d+=1){let g=o.children[d],p=n(g,a,h);if(p.length)l.push(...p);else if(o.operator===P.AND)return[]}return l},r=this._myIndex.records,i={},c=[];return r.forEach(({$:o,i:a})=>{if(m(o)){let h=n(s,o,a);h.length&&(i[a]||(i[a]={idx:a,item:o,matches:[]},c.push(i[a])),h.forEach(({matches:l})=>{i[a].matches.push(...l)}))}}),c}_searchObjectList(e){let s=ee(e,this.options),{keys:n,records:r}=this._myIndex,i=[];return r.forEach(({$:c,i:o})=>{if(!m(c))return;let a=[];n.forEach((h,l)=>{a.push(...this._findMatches({key:h,value:c[l],searcher:s}))}),a.length&&i.push({idx:o,item:c,matches:a})}),i}_findMatches({key:e,value:s,searcher:n}){if(!m(s))return[];let r=[];if(A(s))s.forEach(({v:i,i:c,n:o})=>{if(!m(i))return;let{isMatch:a,score:h,indices:l}=n.searchIn(i);a&&r.push({score:h,key:e,value:i,idx:c,norm:o,indices:l})});else{let{v:i,n:c}=s,{isMatch:o,score:a,indices:h}=n.searchIn(i);o&&r.push({score:a,key:e,value:i,norm:c,indices:h})}return r}};L.version="6.6.2";L.createIndex=pe;L.parseIndex=He;L.config=u;L.parseQuery=me;Ye(Z);var qe=()=>{let t;document.addEventListener("focusin",e=>{let s=document.querySelector("#search input");event.target===s&&s.dispatchEvent(new Event("input",{bubbles:!0}))}),document.addEventListener("keyup",e=>{let s=document.querySelector("#search input");if(event.target===s)switch(event.key){case"ArrowDown":t?(t.classList.remove("selected"),t=t.nextElementSibling):t=document.querySelectorAll("#search a")[0],t&&t.classList.add("selected");break;case"ArrowUp":if(t)t.classList.remove("selected"),t=t.previousElementSibling;else{let n=document.querySelectorAll("#search a");t=n[n.length-1]}t&&t.classList.add("selected");break;case"Escape":s.blur();break;case"Enter":(t||document.querySelector("#search a"))?.click();break}})},Me=qe;var ye=null,et=5,Se={async init(){try{let t=window.location.origin,e=await window.fetch(t+"/index.json");if(!e.ok){this.removeSearch();return}let s=await e.json();ye=new L(s,{keys:[{name:"title",weight:20},{name:"tag",weight:5},{name:"content"}]}),document.addEventListener("input",this.showResults),Me()}catch{this.removeSearch()}},showResults(t){let e=document.querySelector("#search input");if(t.target!==e)return;let s=document.querySelector("#search div");if(e.value.length>0){let n=ye.search(e.value);s.innerHTML=n.slice(0,et).map(r=>`<a href="${r.item.url}">
          <img src="${r.item.cover||""}" width="40" height="40">
          <h3>${r.item.title}</h3>
          <span>${r.item.content.substr(0,40)}</span>
        </a>`).join("")}else s.innerHTML=""},removeSearch(){document.querySelector("#search")?.remove()}};function tt(){ie.init(),Se.init()}tt();})();
