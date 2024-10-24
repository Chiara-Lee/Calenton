/**!
 * Not meant as a reference for good CSS practices. The goal of Hugo in Action
 * is for us to understand Hugo. The HTML/CSS/JS code has been intentionally
 * made complicated so that we can simplify the Go HTML Template pieces of Hugo. 
 * There are intentional cases where CSS selectors are used instead of class
 * parameters for targeting. Many of the targeting done in CSS is more
 * specific than it should be. Some of the decisions taken are sub-optimal.
 * You are free to use this code on your website but beware of caveats and
 * do understand that support may be lacking where expected.
 **/
:root {
	--red: 79;
	--green: 70;
	--blue: 229;

  -moz-tab-size: 4;
  tab-size: 4;
}
html {
  background: url('image/background.webp') 0 0/cover;
  min-height: 100vh;
  /* 移除 max-height 和 scroll-snap-type */
}
.home {
  background-image: url('image/background.webp');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
  min-height: 100vh; /* 确保背景区域至少占满视窗 */
  /* background-attachment: fixed; // 移除以避免滚动卡顿 */
}

body {
  margin: 0 auto;
  font-family: system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji;
  font-family: inherit;
  line-height: inherit;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  width: 100vw;
}
hr {
  height: 0;
  color: inherit;
  border-top-width: 1px;
}
strong {
  font-weight: bold; /* 或者设置为更大的值，比如 700 */
  color: #a3c585; /* 设为抹茶绿色，确保对比度明显 */
}
.page main p strong {
  font-weight: bold;
  color: #ff0000; /* 红色，以确保可见性 */
}
/*strong 针对的是所有的 markdown 加粗语法，而 .page main p strong 则特异性针对段落内 <p> 加粗，
优先级更高，因此应用之后可以发现，段落开头加粗字体为抹茶色，段落内为红色。   */
/*首页内的加粗为粉色，是因为我特异性的定义了  .home.h1  等主页标题的加粗颜色*/
code,
pre {
  font-size: 1em;
  font-family: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;
}
small {
  font-size: 80%;
}
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
  top: -.5em;
}
table {
  text-indent: 0;
  border-color: inherit;
  border-collapse: collapse;
}
input,
textarea {
  margin: 0;
  padding: 0;
}
button,
input,
select,
textarea {
  font-family: inherit;
  font-size: 100%;
  line-height: 1.15;
  color: inherit;
}
button,
select {
  text-transform: none;
}
[type=button],
[type=submit],
button {
  -webkit-appearance: button;
}
[type=search] {
  -webkit-appearance: textfield;
  outline-offset: -2px;
}
summary {
  display: list-item;
}

blockquote,
dd,
dl,
figure,
h1,
h2,
h3,
h6,
hr,
p,
pre {
  margin: 0;
}
button {
  background-color: transparent;
  background-image: none;
}
button:focus {
  outline: dotted 1px;
  outline: -webkit-focus-ring-color auto 5px;
}
ol,
ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
*,
:after,
:before {
  box-sizing: border-box;
  border: 0 solid #e5e7eb;
}
img {
  border-style: solid;
}
textarea {
  resize: vertical;
}
input::placeholder,
textarea::placeholder {
  color: #6b7280;
  opacity: 1;
}
[role=button],
button {
  cursor: pointer;
}
h1,
h2,
h3,
h6 {
  font-size: inherit;
  font-weight: inherit;
}
a {
  color: inherit;
  text-decoration: inherit;
}
iframe,
img,
svg,
video {
  display: block;
  vertical-align: middle;
}
img,
video {
  max-width: 100%;
  height: auto;
}
[multiple],
[type=email],
[type=search],
[type=text],
[type=time],
[type=url],
select,
textarea {
  appearance: none;
  background-color: #fff;
  border-color: #6b7280;
  border-width: 1px;
  border-radius: 0;
  padding: .5rem .75rem;
  font-size: 1rem;
  line-height: 1.5rem;
}
[multiple]:focus,
[type=email]:focus,
[type=search]:focus,
[type=text]:focus,
[type=time]:focus,
[type=url]:focus,
select:focus,
textarea:focus {
  outline: transparent solid 2px;
  outline-offset: 2px;
  box-shadow: 0 0 0 0 #fff,0 0 0 calc(1px + 0px) #2563eb,0 0 transparent;
  border-color: #2563eb;
}
select {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e");
  background-position: right .5rem center;
  background-repeat: no-repeat;
  background-size: 1.5em 1.5em;
  padding-right: 2.5rem;
  color-adjust: exact;
}
[multiple] {
  background-image: none;
  background-position: 0 0;
  background-repeat: unset;
  background-size: initial;
  padding-right: .75rem;
  color-adjust: unset;
}
[type=checkbox],
[type=radio] {
  appearance: none;
  padding: 0;
  color-adjust: exact;
  display: inline-block;
  vertical-align: middle;
  background-origin: border-box;
  user-select: none;
  flex-shrink: 0;
  height: 1rem;
  width: 1rem;
  color: #2563eb;
  background-color: #fff;
  border-color: #6b7280;
  border-width: 1px;
}
[type=checkbox] {
  border-radius: 0;
}
[type=radio] {
  border-radius: 100%;
}
[type=checkbox]:focus,
[type=radio]:focus {
  outline: transparent solid 2px;
  outline-offset: 2px;
  box-shadow: 0 0 0 2px #fff,0 0 0 calc(2px + 2px) #2563eb,0 0 transparent;
}
[type=checkbox]:checked,
[type=radio]:checked {
  border-color: transparent;
  background-color: currentColor;
  background-size: 100% 100%;
  background-position: 50%;
  background-repeat: no-repeat;
}
[type=checkbox]:checked {
  background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
}
[type=radio]:checked {
  background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e");
}
[type=checkbox]:checked:focus,
[type=checkbox]:checked:hover,
[type=radio]:checked:focus,
[type=radio]:checked:hover {
  border-color: transparent;
  background-color: currentColor;
}
[type=checkbox]:indeterminate {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e");
  border-color: transparent;
  background-color: currentColor;
  background-size: 100% 100%;
  background-position: 50%;
  background-repeat: no-repeat;
}
[type=checkbox]:indeterminate:focus,
[type=checkbox]:indeterminate:hover {
  border-color: transparent;
  background-color: currentColor;
}
[type=file] {
  background: unset;
  border-color: inherit;
  border-width: 0;
  border-radius: 0;
  padding: 0;
  font-size: unset;
  line-height: inherit;
}
[type=file]:focus {
  outline: -webkit-focus-ring-color auto 1px;
}
body > * {
  width: 100%;
  margin-left: 1.25rem;
  margin-right: 1.25rem;
}
@media (min-width:640px) {
  body>*,
  header {
    max-width: 640px;
  }
}
@media (min-width:768px) {
  body > * {
    max-width: 768px;
    margin-left: 1.75rem;
    margin-right: 1.75rem;
  }
}
@media (min-width:1024px) {
  body > * {
    max-width: 1024px;
    margin-left: 2.5rem;
    margin-right: 2.5rem;
  }
}
.btn {
  background-color: #fff;
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .5rem 1rem;
  color: rgb(var(--red), var(--green), var(--blue));
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
.btn:hover,
.home #description a:hover,
.btn:focus,
.home #description a:focus,
.home section:first-of-type>a:focus,
body.page form button:focus {
  box-shadow: 0 0 0 0 #fff,0 0 0 calc(4px + 0px) rgba(59,130,246,.5),0 0 transparent;
}
.icon-blog {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="blue" d="M410.3 231l11.3-11.3-33.9-33.9-62.1-62.1L291.7 89.8l-11.3 11.3-22.6 22.6L58.6 322.9c-10.4 10.4-18 23.3-22.2 37.4L1 480.7c-2.5 8.4-.2 17.5 6.1 23.7s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L387.7 253.7 410.3 231zM160 399.4l-9.1 22.7c-4 3.1-8.5 5.4-13.3 6.9L59.4 452l23-78.1c1.4-4.9 3.8-9.4 6.9-13.3l22.7-9.1 0 32c0 8.8 7.2 16 16 16l32 0zM362.7 18.7L348.3 33.2 325.7 55.8 314.3 67.1l33.9 33.9 62.1 62.1 33.9 33.9 11.3-11.3 22.6-22.6 14.5-14.5c25-25 25-65.5 0-90.5L453.3 18.7c-25-25-65.5-25-90.5 0zm-47.4 168l-144 144c-6.2 6.2-16.4 6.2-22.6 0s-6.2-16.4 0-22.6l144-144c6.2-6.2 16.4-6.2 22.6 0s6.2 16.4 0 22.6z"/></svg>') 50% no-repeat;
}
.icon-facebook {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white" d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"/></svg>') 50% no-repeat;
}
.icon-rss {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white"  d="M6.503 20.752c0 1.794-1.456 3.248-3.251 3.248-1.796 0-3.252-1.454-3.252-3.248 0-1.794 1.456-3.248 3.252-3.248 1.795.001 3.251 1.454 3.251 3.248zm-6.503-12.572v4.811c6.05.062 10.96 4.966 11.022 11.009h4.817c-.062-8.71-7.118-15.758-15.839-15.82zm0-3.368c10.58.046 19.152 8.594 19.183 19.188h4.817c-.03-13.231-10.755-23.954-24-24v4.812z"/></svg>') 50% no-repeat;
}
.icon-twitter {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white" d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/></svg>') 50% no-repeat;
}
.icon-email {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 40 40"><rect x="-8" y="-8" width="40" height="40" rx="5" fill="rgba(17, 24, 39)"></rect><path fill="white" d="M12 12.713l-11.985-9.713h23.97l-11.985 9.713zm0 2.574l-12-9.725v15.438h24v-15.438l-12 9.725z"/></svg>') 50% no-repeat;
}
.icon-news {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="blue" d="M96 0C43 0 0 43 0 96L0 416c0 53 43 96 96 96l288 0 32 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l0-64c17.7 0 32-14.3 32-32l0-320c0-17.7-14.3-32-32-32L384 0 96 0zm0 384l256 0 0 64L96 448c-17.7 0-32-14.3-32-32s14.3-32 32-32zm32-240c0-8.8 7.2-16 16-16l192 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-192 0c-8.8 0-16-7.2-16-16zm16 48l192 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-192 0c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>') 50% no-repeat;
}
.icon-resource {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="blue" d="M201 10.3c14.3-7.8 31.6-7.8 46 0L422.3 106c5.1 2.8 8.3 8.2 8.3 14s-3.2 11.2-8.3 14L231.7 238c-4.8 2.6-10.5 2.6-15.3 0L25.7 134c-5.1-2.8-8.3-8.2-8.3-14s3.2-11.2 8.3-14L201 10.3zM23.7 170l176 96c5.1 2.8 8.3 8.2 8.3 14l0 216c0 5.6-3 10.9-7.8 13.8s-10.9 3-15.8 .3L25 423.1C9.6 414.7 0 398.6 0 381L0 184c0-5.6 3-10.9 7.8-13.8s10.9-3 15.8-.3zm400.7 0c5-2.7 11-2.6 15.8 .3s7.8 8.1 7.8 13.8l0 197c0 17.6-9.6 33.7-25 42.1L263.7 510c-5 2.7-11 2.6-15.8-.3s-7.8-8.1-7.8-13.8l0-216c0-5.9 3.2-11.2 8.3-14l176-96z"/></svg>') 50% no-repeat;
}
.icon-contact {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="blue" d="M347.1 24.6c7.7-18.6 28-28.5 47.4-23.2l88 24C499.9 30.2 512 46 512 64c0 247.4-200.6 448-448 448c-18 0-33.8-12.1-38.6-29.5l-24-88c-5.3-19.4 4.6-39.7 23.2-47.4l96-40c16.3-6.8 35.2-2.1 46.3 11.6L207.3 368c70.4-33.3 127.4-90.3 160.7-160.7L318.7 167c-13.7-11.2-18.4-30-11.6-46.3l40-96z"/></svg>') 50% no-repeat;
}
.icon-editor {
  background: url("data:image/svg+xml;utf8,<svg version='1.1' id='Layer_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 554.3 551.2' style='enable-background:new 0 0 554.3 551.2;' xml:space='preserve'><style type='text/css'> .st0{fill:rgb(79, 70, 229);stroke:rgb(79, 70, 229);stroke-width:22;stroke-miterlimit:10;}</style><path class='st0' d='M59.3,62.6v157.5h157.5V62.6H59.3z M59.3,23.3h157.5c21.8,0,39.4,17.6,39.4,39.4c0,0,0,0,0,0v157.5 c0,21.8-17.6,39.4-39.4,39.4c0,0,0,0,0,0H59.3c-21.8,0-39.4-17.6-39.4-39.4V62.6C19.9,40.9,37.5,23.3,59.3,23.3z M59.3,338.3v157.5 h157.5V338.3H59.3z M59.3,299h157.5c21.8,0,39.4,17.6,39.4,39.4v0v157.5c0,21.8-17.6,39.4-39.4,39.4c0,0,0,0,0,0H59.3 c-21.8,0-39.4-17.6-39.4-39.4l0,0V338.3C19.9,316.6,37.5,299,59.3,299C59.3,299,59.3,299,59.3,299z M413.8,62.6 c-43.5,0-78.8,35.3-78.8,78.8s35.3,78.8,78.8,78.8c43.5,0,78.8-35.3,78.7-78.8C492.5,97.9,457.2,62.7,413.8,62.6L413.8,62.6z M413.8,23.3c65.3,0,118.2,52.9,118.2,118.1c0,65.3-52.9,118.2-118.1,118.2c0,0,0,0-0.1,0c-65.3,0-118.1-52.9-118.1-118.2 C295.7,76.2,348.5,23.3,413.8,23.3z M335,338.3v157.5h157.5V338.3H335z M335,299h157.5c21.8,0,39.4,17.6,39.4,39.4v0v157.5 c0,21.8-17.6,39.4-39.4,39.4h0H335c-21.8,0-39.4-17.6-39.4-39.4v0V338.3C295.6,316.6,313.2,299,335,299L335,299z'/></svg>") 50% no-repeat;
}
.icon-store {
  background: url("data:image/svg+xml;utf8,<svg id='Layer_1' data-name='Layer 1' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 122.88 111.85'><path fill='rgb(79, 70, 229)' stroke='rgb(79, 70, 229)' stroke-width='' d='M4.06,8.22A4.15,4.15,0,0,1,0,4.06,4.13,4.13,0,0,1,4.06,0h6A19.12,19.12,0,0,1,20,2.6c5.44,3.45,6.41,8.38,7.8,13.94h91a4.07,4.07,0,0,1,4.06,4.06,5,5,0,0,1-.21,1.25L112.06,64.61a4,4,0,0,1-4,3.13H41.51c1.46,5.41,2.92,8.32,4.89,9.67C48.8,79,53,79.08,59.93,79h47.13a4.06,4.06,0,0,1,0,8.12H60c-8.63.1-13.94-.11-18.2-2.91s-6.66-7.91-8.95-17h0L18.94,14.46c0-.1,0-.1-.11-.21a7.26,7.26,0,0,0-3.12-4.68A10.65,10.65,0,0,0,10,8.22H4.06Zm80.32,25a2.89,2.89,0,0,1,5.66,0V48.93a2.89,2.89,0,0,1-5.66,0V33.24Zm-16.95,0a2.89,2.89,0,0,1,5.67,0V48.93a2.89,2.89,0,0,1-5.67,0V33.24Zm-16.94,0a2.89,2.89,0,0,1,5.66,0V48.93a2.89,2.89,0,0,1-5.66,0V33.24Zm41.72-8.58H30.07l9.26,34.86H105l8.64-34.86Zm2.68,67.21a10,10,0,1,1-10,10,10,10,0,0,1,10-10Zm-43.8,0a10,10,0,1,1-10,10,10,10,0,0,1,10-10Z'/></svg>") 50% no-repeat;
}
.icon-reader {
  background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='-5 -5 113 113' ><rect x='-5' y='-5' width='115' height='115' rx='15' fill='rgba(17, 24, 39)'></rect><path fill='white' d='M86.84,12.89H13.16a8.16,8.16,0,0,0-6.59,3.37,7.8,7.8,0,0,0-.58.91,8.11,8.11,0,0,0-1,3.89V78.94a8.19,8.19,0,0,0,8.16,8.17H86.84A8.19,8.19,0,0,0,95,78.94V21.06A8.19,8.19,0,0,0,86.84,12.89ZM89,78.94a2.19,2.19,0,0,1-2.16,2.17H51.18V18.89H86.84A2.19,2.19,0,0,1,89,21.06Z'/><path fill='white'  d='M82.43,58.67H57.79a3.33,3.33,0,1,0,0,6.66H82.43a3.33,3.33,0,0,0,0-6.66Z'/><path fill='white'  d='M82.43,34.67H57.79a3.33,3.33,0,1,0,0,6.66H82.43a3.33,3.33,0,0,0,0-6.66Z'/><path fill='white'  d='M82.43,46.67H57.79a3.33,3.33,0,1,0,0,6.66H82.43a3.33,3.33,0,0,0,0-6.66Z'/></svg>") 50% no-repeat;
}



body.page {
  font-family: Arial, sans-serif;
}

.page-title {
  font-size: 2.5em;
  text-align: center;
  margin-bottom: 20px;
}

#posts {
  padding: 20px;
}

.post-container {
  display: flex;
  flex-direction: column;
  align-items: flex-start;  /* 确保帖子从左侧对齐 */
  padding: 20px;
  width: 90%; /* 改为百分比宽度以适应不同屏幕 */
  max-width: 100%;
  margin: 0 auto; /* 居中显示容器 */
  padding: 0;
  width: 100%;
}

.post-item {
  width: 100%; /* 设置宽度为100% */
  max-width: 800px; /* 可根据需要调整最大宽度 */
  padding: 5px 0;
  box-shadow: none;
  border: none; /* 移除子项边框 */
  background-color: #fff; /* 添加背景色使其更像卡片 */
  margin: 0; /* 取消子项外边距 */
}

.post-summary {
    display: flex;
    align-items: stretch; /* 使内容和封面高度一致 */
    margin-bottom: 0;  /* 去除底部多余空隙 */
}
.post-wrapper {
    display: flex;
    align-items: flex-start; /* 确保封面和内容在顶部对齐 */
}

.post-cover {
    float: left;
    width: 150px; /* 根据需要调整宽度 */
    height: auto; /* 让高度自适应 */
    margin-right: 20px; /* 与文本间留出合适间隙 */
}

.post-title {
    font-size: 1.5em;
    font-weight: bold;
    margin-bottom: 10px; /* 添加一些间隙 */
    color: #000; /* 确保标题颜色为黑色，而不是蓝色 */
}

.post-content {
    flex: 1;  /* 使摘要内容填充剩余空间 */
    text-align: left;  /* 摘要文字左对齐 */
}
.post-content h2 {
    margin: 0 0 10px; /* 调整标题的边距 */
}

.post-content p {
    margin: 0;
    color: #333; /* 改变字体颜色使其更符合页面风格 */
}

.posts {
  display: flex;
  flex-wrap: wrap;
  align-items: stretch;
  justify-content: space-around;
  margin-left: auto;
  margin-right: auto;
}
html body .post a {
  text-decoration: none;
}
.post {
  background-color: #fff;
  border: 2px solid transparent;
  cursor: pointer;
  overflow: hidden;
  padding: .5rem;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
}
.post:hover {
  border-color: rgba(209,213,219,.4);
  border-radius: .5rem;
  box-shadow: 0 0 transparent,0 0 transparent,0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06);
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .3s;
  filter: contrast(1.5) saturate(1.5) drop-shadow(0 1px 2px rgba(0,0,0,.1)) drop-shadow(0 1px 1px rgba(0,0,0,.06));
  transform: scale(1.02);
  z-index: 9;
  position: relative;
}
.post:hover a:before {
  content: " ";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  box-shadow: inset 0 0 2000px hsla(0,0%,100%,.3);
}
.post img {
  display: inline-block;
  height: 16rem;
  object-fit: cover;
  width: 100%;
}
.post div {
  font-weight: 700;
  padding-top: 1.25rem;
  padding-bottom: 1.25rem;
  color: rgb(var(--red), var(--green), var(--blue));
}
.post div:hover {
  text-decoration: underline;
}
.post h2 {
  font-weight: 700;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding-bottom: .75rem;
  padding-top: 2rem;
  color: #1f2937;
}
.post article {
  color: #4b5563;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}
.text {
  color: #4b5563;
}
header {
  width: 100%;
  background-color: transparent;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  padding: 1rem .5rem .5rem;
  justify-content: stretch;
}
header:before {
  content: " ";
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100px' height='100px'%3E%3Cpattern id='diagonalHatch' patternUnits='userSpaceOnUse' width='4' height='4'%3E%3Cpath d='M-1,1 l2,-2 M0, 4 l4, -4 M3, 5 l2, -2' style='stroke:rgba(255,255,255,.3); stroke-width:1.5'/%3E%3C/pattern%3E%3Crect x='0' y='0' width='100%25' height='100%25' fill='url(%23diagonalHatch)'/%3E%3C/svg%3E%0A");
  border-bottom-width: 1px;
  border-top-width: 1px;
  background-color: rgb(var(--red), var(--green), var(--blue));
  border-color: rgb(var(--red), var(--green), var(--blue));
  height: .5rem;
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
}
@media (min-width:768px) {
  .btn {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
  }
  .post {
    padding: .75rem;

  }
  .post article,
  .text {
    font-size: .875rem;
    line-height: 1.25rem;
  }
  header {
    max-width: 768px;
    padding-bottom: 1rem;
    padding-top: 1.5rem;
  }
}
@media (min-width:1024px) {
  .btn {
    padding: 1rem 1.5rem;
  }
  .post {
    padding: 1rem;
  }
  .post article,
  .text {
    font-size: 1rem;
    line-height: 1.5rem;
  }
  header {
    max-width: 1024px;
    padding: 2.5rem .25rem 2rem;
  }
  header nav li a:hover {
    text-decoration: underline;
  }
}
header > a > img {
  padding-right: .75rem;
  width: 3rem;
  align-self: center;
}
header > a {
  display: flex;
  align-items: center;
  font-weight: 700;
  font-size: 1.125rem;
  line-height: 1.75rem;
  white-space: nowrap;
  flex: 1;
}
header nav li {
  border-color: #374151;
  cursor: pointer;
  display: block;
  text-align: center;
  width: 100%;
}
header nav li a {
  border-top-width: 1px;
  border-color: #d1d5db;
  display: inline-block;
  padding-top: .5rem;
  padding-bottom: .5rem;
  width: 100%;
}
header nav ul {
  background-color: #fff;
  border-radius: .375rem;
  display: none;
  box-shadow: 0 0 transparent,0 0 transparent,0 10px 15px -3px rgba(0,0,0,.1),0 4px 6px -2px rgba(0,0,0,.05);
  z-index: 20;
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
.relative,
header nav ul>li {
  position: relative;
}
header nav ul > li ul {
  display: block;
  font-size: .875rem;
  line-height: 1.25rem;
  position: static;
  left: 0;
  top: 3rem;
  z-index: 10;
}
header nav ul > li ul li:first-of-type a {
  border-top-width: 0;
}
header nav ul > li:hover ul {
  visibility: visible;
}
header .hamburger {
  border-color: #6b7280;
  border-radius: .125rem;
  border-width: 1px;
  padding: .5rem 1rem;
}
header nav:hover .hamburger {
  background-color: rgba(var(--red), var(--green), var(--blue), .3);
  border-color: rgba(var(--red), var(--green), var(--blue), .7);
}
.block,
header nav:hover>ul {
  display: block;
}
@media (max-width:1023px) {
  header nav:hover > ul ul {
    background-color: #fff;
    position: static;
  }
  header nav:hover > ul {
    padding-top: .25rem;
    position: absolute;
    right: .75rem;
    left: .75rem;
  }
  header nav:hover > ul li {
    background-color: #fff;
  }
  header nav:hover > ul li > a:hover {
    background-color: rgba(var(--red), var(--green), var(--blue), .3);
    border-color: rgba(var(--red), var(--green), var(--blue), .7);
  }
  header nav:hover > ul > li:hover + li > a {
    border-color: rgba(var(--red), var(--green), var(--blue), .7);
  }
   > ul > li:hover:last-of-type > a {
    border-bottom-width: 1px;
  }
}
.page header ~ main {
  margin-top: 0;
  margin-bottom: 0;
}
.page main {
  background-color: rgba(255, 255, 255, 0.85); /* 半透明的白色背景，让内容与背景图片有对比感 */
  border-radius: 15px; /* 边框圆角 */
  padding: 40px; /* 内边距，保证内容不会贴边 */
  max-width: 700px; /* 最大宽度，保证容器不会过于宽泛 */
  margin: 0 auto; /* 保证主内容在页面中央 */
  box-shadow: 0px 15px 30px rgba(0, 0, 0, 0.2); /* 添加阴影，使容器看起来浮动 */
  position: relative;
  z-index: 10; /* 确保内容容器位于背景图之上 */
  display: flex;
  flex-direction: column;
  align-items: center; /* 子元素水平居中 align：支持，item：项目  */
}

.page main nav {
  text-align: left; /* 将目录部分的对齐设置为左对齐 */
  width: 100%; /* 确保目录占满父容器 */
  padding-left: 20px; /* 如果需要，可以给一些左侧内边距，使其更美观 */
}


.page main h1 {
  font-size: 3rem; /* 调整标题的大小 */
  line-height: 3.5rem;
  text-align: center; /* 标题居中对齐 */
  margin-top: 0;     /* 与顶部无间隙 */
  margin-bottom: 20px; /* 标题与正文之间添加间距 */
  margin-left: auto;  /* 自动左边距 */
  margin-right: auto;
  width: 100%; /* 使得标题占满可用宽度，这样 text-align 会生效 */
}

.page main p {
  font-size: 1rem;
  line-height: 1.75rem;
  padding-top: .75rem;
  padding-bottom: 1.25rem;
}
.page main h2 {
    text-align: left; /* 设置 h2 元素左对齐 */
  margin-left: 0;   /* 取消任何可能使 h2 居中的边距 */
  width: 100%;      /* 确保 h2 元素占满父容器的宽度 */
}

.page main h3 {
  font-weight: 300;
  font-size: 1.875rem; /* 例如标题的大小可以更突出 */
  line-height: 2.25rem;
}
.page main ol {
  list-style-type: decimal;
  padding: 1.25rem 1.25rem 1.25rem 2rem;
}
.page main ul {
  list-style-type: "→ ";
  padding: 1.25rem 1.25rem 1.25rem 2rem;
}
.page main img {
  border-radius: .25rem;
  box-shadow: 0 0 transparent, 0 0 transparent, 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
  margin: 20px 0;
}
.page main h1:after {
  content: "";
  height: 2px;
  width: 50%;
  background-color: rgb(var(--red), var(--green), var(--blue));
  position: absolute;
  bottom: -10px;
  left: 25%;
}

.home #description h1 strong,
.home section:first-of-type h2 strong,
.page main h2 strong {
  font-weight: 700;
  color: #ff69b4; /* 粉色 */
  text-shadow: 0 0 1px rgba(0,0,0,20%), 0 0 1px rgba(1,0,5,10%);
}
.page main h3 {
  font-weight: 300;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding-top: 1rem;
  padding-bottom: .5rem;
}
.page main h4 {
  font-weight: 700;
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding-top: .75rem;
  padding-bottom: .5rem;
}
.page main h5 {
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding-top: .5rem;
  padding-bottom: .25rem;
}
.page main h6 {
  font-weight: 700;
  padding-top: .25rem;
  padding-bottom: .25rem;
}
.page main p {
  padding-top: .75rem;
  padding-bottom: 1.25rem;
}
.page main ol,
.page main ul {
  padding: 1.25rem 1.25rem 1.25rem 2rem;
}
.page main ol, 
.page main ol ol, 
.page main ol ol ol {
  list-style-type: decimal;
}
.page main ul {
  list-style-type: "* ";
}
.page main ul ul {
  list-style: disc;
}
.page main ul ul ul {
  list-style: circle;
}
.page main blockquote {
  background-color: #f3f4f6;
  border-radius: .25rem;
  padding: .75rem;
  box-shadow: 0 0 transparent,0 0 transparent,inset 0 2px 4px 0 rgba(0,0,0,.06);
}
.page main code {
  background-color: #272822;
  border-radius: .25rem;
  padding: .25rem;
  color: #f3f4f6;
}
.page main pre {
  display: block;
  margin-top: 1.25rem;
  margin-bottom: 1.25rem;
}
.home #intro nav li a:hover,
.page main a,
footer a:hover {
  color: rgb(var(--red), var(--green), var(--blue));
  text-decoration: underline;
}
.page main table {
  border-color: #e5e7eb;
  border-width: 2px;
}
.page main td,
.page main th {
  padding: .5rem .75rem;
}
.page main thead {
  background-color: #e5e7eb;
}
.home #menu h1:after,
.home #testimonials h1:after,
.page main tr:nth-child(2) {
  background-color: #f3f4f6;
}
.page main dl {
  border-color: #f3f4f6;
  border-width: 2px;
}
.page main dl dt {
  border-left-width: 8px;
  font-weight: 700;
  padding-left: 1rem;
}
.page main dl dd {
  padding-left: 6rem;
}
@media (min-width:640px) {
  .page main {
    max-width: 640px;
  }
}
@media (min-width:768px) {
  .page main h1 {
    font-size: 1.875rem;
    line-height: 2.25rem;
  }
  .page main {
    max-width: 768px;
  }
}
@media (min-width:1024px) {
  header nav li a {
    border-top-width: 0;
    width: auto;
  }
  header nav ul > li ul {
    background-color: #e5e7eb;
    display: none;
    position: absolute;
    top: 2rem;
  }
  header nav ul > li:hover ul {
    display: block;
    visibility: visible;
  }
  header nav:hover > ul {
    display: inline-block;
  }
  header nav li {
    display: inline-block;
    padding-left: 1rem;
    padding-right: 1rem;
    width: auto;
  }
  header nav ul {
    background-color: transparent;
    display: inline-block;
    box-shadow: 0 0 transparent,0 0 transparent,0 0 transparent;
    width: auto;
  }
  header .hamburger {
    display: none;
  }
  .page main h1 {
    font-size: 2.25rem;
    line-height: 2.5rem;
    padding-top: 2.5rem;
  }
  .page main h2,
  .page main h3 {
    font-size: 1.5rem;
    line-height: 2rem;
  }
  .page main {
    max-width: 1024px;
  }
}
.home section:not(:last-of-type) {
  border-bottom: 1px solid #e5e7eb;
}
.home footer,
.home header,
.home section {
  scroll-snap-align: start;
}
.home header + section {
  scroll-snap-align: none;
}
.home #intro nav {
  position: absolute;
  bottom: 0;
  text-align: center;
  width: 100%;
}
.home #intro nav li {
  display: inline-block;
  font-size: .75rem;
  line-height: 1rem;
}
.home #intro nav li a {
  display: inline-block;
  padding: .75rem;
}
.home #intro {
  padding-bottom: 2.5rem;
  position: relative;
}
.home h1 {
  font-size: 1.5rem;
  line-height: 2rem;
  padding-top: .75rem;
  padding-bottom: .75rem;
  margin-left: auto;
  margin-right: auto;
  position: relative;
  width: fit-content;
  width: -moz-fit-content;
}
.home section:first-of-type:not(:last-of-type):after {
  content: "↓";
  border-radius: 9999px;
  border: 2px dashed rgb(var(--red), var(--green), var(--blue));
  height: 2.5rem;
  font-size: 1.125rem;
  line-height: 2.5rem;
  opacity: .8;
  color: rgb(var(--red), var(--green), var(--blue));
  width: 2.5rem;
  margin: 50px auto 20px;
}
.home section:first-of-type:not(:last-of-type) {
  min-height: 100vh;
}
.home header + section:first-of-type:not(:last-of-type) {
  min-height: calc(100vh - 40px - 1.5rem);
}
.home section:first-of-type {
  display: flex;
  flex-direction: column;
  align-content: center;
  justify-content: center;
  flex-grow: 1;
  text-align: center;
}
.home section:first-of-type img {
  background-color: #fff;
  margin-left: auto;
  margin-right: auto;
  width: 3rem;
}
.home section:first-of-type h1 {
  background-color: transparent;
  font-size: 1.875rem;
  line-height: 2.25rem;
  padding-top: 1.25rem;
  padding-bottom: 1.25rem;
}
.hidden,
.home #testimonials li .twitter-tweet *,
.home section:first-of-type h1:after {
  display: none;
}
.home section:first-of-type h2 {
  background-color:  transparent;
  font-weight: 300;
  color: #4b5563;
}
.home section:first-of-type > a {
  border-radius: .75rem;
  border: 2px solid #a3c585;
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .5rem 1rem;
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  background-color: #a3c585;
  margin-top: 2.5rem;
  color: #fff;
}
.home section:first-of-type > a:hover {
  background-color: rgb(var(--red), var(--green), var(--blue));
  color: #fff;
  text-decoration: none;
  filter: brightness(.75) contrast(1.25);
}
@media (min-width:640px) {
  .home section:first-of-type img {
    width: 3.5rem;
  }
  .home section:first-of-type h1 {
    font-size: 3rem;
    line-height: 1;
  }
}
.home #description {
  background-color: transparent;
  min-height: 100vh;
  padding-left: 1.75rem;
  padding-right: 1.75rem;
  padding-bottom: 2.5rem;
}
.home #description p {
  padding-top: .5rem;
  padding-bottom: .5rem;
  color: #000;
}
.home #description a {
  background-color: #fff;
  border-radius: .75rem;
  border: 2px solid #a3c585;
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .5rem 1rem;
  color: #a3c585;
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  margin-bottom: 2.5rem;
}
.home #description h1 {
  margin-top: 2.5rem;
  text-align: center;
}
.home #description h2 {
  font-weight: 700;
  font-size: 1.125rem;
  line-height: 1.75rem;
  padding-top: .75rem;
  padding-bottom: .75rem;
  margin-top: 5rem;
}
.home #description hr {
  clear: both;
  scroll-snap-align: start;
}
.home #description img {
  border-radius: .125rem;
  float: left;
  margin-top: 1.25rem;
  margin-bottom: 2.5rem;
  box-shadow: 0 0 transparent,0 0 transparent,0 4px 6px -1px rgba(0,0,0,.1),0 2px 4px -1px rgba(0,0,0,.06);
  width: 100%;
}
.float-right,
.home #description hr:nth-of-type(odd)~p img {
  float: right;
}
.home #menu {
  background-color: rgba(163, 197, 133, 0.7); /* 使用 RGBA 定义抹茶绿，透明度 0.7 */
  margin: 0;
  max-width: none;
  padding: 1.75rem 1.25rem;
  color: #fff;
  width: 100vw;
  display: flex;
  flex-direction: column;
  align-items: center;
  transition: background-color 0.3s ease; /* 增加平滑过渡效果 */
}
#menu:hover {
  background-color: rgba(163, 197, 133, 1); /* 鼠标悬停时背景色完全不透明 */
}
.home #menu h1 {
  text-align: center;
  text-shadow: 0 1px 2px rgba(30,29,39,19%),1px 2px 4px rgba(54,64,147,18%);
}
.home #menu h2 {
  font-weight: 300;
  opacity: .9;
  color: #f3f4f6;
  text-shadow: 1px 1px 3px rgba(36,37,47,25%);
}
.home #menu ul {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-evenly;
  width: 100%;
}
.home #menu li {
  border-color: #c7d2fe;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  font-size: 1.25rem;
  line-height: 1.75rem;
  padding: 1.25rem;
  text-align: center;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
}
.home #menu li a {
  display: block;
  padding-bottom: .25rem;
  padding-top: .5rem;
  text-shadow: 0 1px 2px rgba(30,29,39,19%),1px 2px 4px rgba(54,64,147,18%);
}
.home #menu li p {
  opacity: .9;
  color: #f3f4f6;
  text-shadow: 1px 1px 3px rgba(36,37,47,25%);
}
.home #menu i {
  background-color: #f3f4f6;
  border-radius: 9999px;
  display: block;
  height: 4rem;
  margin: 1rem auto;
  width: 4rem;
  filter: drop-shadow(0 4px 3px rgba(0,0,0,.07)) drop-shadow(0 2px 2px rgba(0,0,0,.06));
  background-size: 30px;
}
.home #blog {
  padding-top: 1.75rem;
  padding-bottom: 1.75rem;
}
.home #blog .posts {
  margin-top: 6rem;
  margin-bottom: 6rem;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
}
.home #blog h1 {
  background-color: transparent;
  text-align: center;
}
@media (min-width:768px) {
  .home header + section:first-of-type:not(:last-of-type) {
    min-height: calc(100vh - 40px - 2.5rem);
  }
  .home section:first-of-type img {
    width: 4rem;
  }
  .home section:first-of-type h1 {
    font-size: 3.75rem;
    line-height: 1;
  }
  .home section:first-of-type > a {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
    margin-top: 5rem;
  }
  .home #description p {
    font-size: .875rem;
    line-height: 1.25rem;
    margin-left: 1rem;
    margin-right: 1rem;
    padding-top: .75rem;
    padding-bottom: .75rem;
  }
  .home #description a {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .75rem 1.25rem;
  }
  .home #description hr~h2,
  .home #description hr~p {
    margin-left: 2rem;
    margin-right: 2rem;
  }
  .home #description img {
    border-radius: .375rem;
    margin: 2.5rem 1rem;
    max-width: 24rem;
  }
  .home #description h2 {
    margin-left: 1rem;
    margin-right: 1rem;
    margin-top: .75rem;
  }
  .home #menu li p {
    font-size: .875rem;
    line-height: 1.25rem;
  }
  .home #testimonials li .twitter-tweet p {
    font-size: 1.5rem;
    line-height: 2rem;
  }
  .home #testimonials > div {
    max-width: 768px;
    width: 740px;
  }
}
@media (min-width:1024px) {
  .home #intro nav li {
    font-size: .875rem;
    line-height: 1.25rem;
  }
  .home header + section:first-of-type:not(:last-of-type) {
    min-height: calc(100vh - 46px - 4.5rem);
  }
  .home section:first-of-type h1 {
    font-size: 4.5rem;
    line-height: 1;
  }
  .home section:first-of-type h2 {
    font-size: 1.5rem;
    line-height: 2rem;
  }
  .home #description a,
  .home section:first-of-type>a {
    padding: 1rem 1.5rem;
  }
  .home #description p {
    font-size: 1rem;
    line-height: 1.5rem;
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
  }
  .home #description h1 {
    margin-top: 5rem;
  }
  .home #description h2 {
    font-size: 1.5rem;
    line-height: 2rem;
    padding-top: 2.5rem;
  }
  .home #description img {
    margin-top: 5rem;
    margin-bottom: 5rem;
    max-width: 36rem;
  }
  .home #menu h2 {
    font-size: 1.125rem;
    line-height: 1.75rem;
  }
  .home #menu li p {
    font-size: 1rem;
    line-height: 1.5rem;
  }
  .home #testimonials > div {
    max-width: 1024px;
    width: 968px;
  }
}
@media (min-width:640px) {
  .home #testimonials ol {
    padding: 1.25rem;
  }
  .home #testimonials li {
    border-radius: .375rem;
    font-size: 1.25rem;
    line-height: 1.75rem;
    padding-left: 1.25rem;
    padding-right: 1.25rem;
    margin: .75rem;
    width: 530px;
  }
}
@media (min-width:640px) {
  .home #intro nav {
    max-width: 640px;
  }
}
@media (min-width:768px) {
  .home #testimonials ol {
    padding: 1.75rem;
  }
  .home #testimonials li {
    border-radius: .5rem;
    font-size: 1.5rem;
    line-height: 2rem;
    padding: 2.5rem 1.75rem;
    margin: 1rem;
    width: 622px;
  }
@media (min-width:1024px) {
  .home #testimonials ol {
    padding: 2.5rem;
  }
  .home #testimonials li {
    padding: 5rem 2.5rem;
    margin: 1.25rem;
    width: 850px;
  }
  .home #intro nav {
    max-width: 1024px;
  }
  .home #intro {
    padding-bottom: 3rem;
  }
}
@media (min-width:1280px) {
  .home #intro nav,
  .home #testimonials>div,
  .page main,
  body>*,
  header {
    max-width: 1280px;
  }
}
@media (min-width:1536px) {
  .home #intro nav,
  .home #testimonials>div,
  .page main,
  body>*,
  header {
    max-width: 1536px;
  }
}
.contact-box {
  display: grid;
  grid-template-columns: repeat(1,minmax(0,1fr));
}
.contact-box p {
  color: #1f2937;
}
.contact-box form div,
footer nav {
  margin: 1rem;
}
body.page form button {
  border-radius: .75rem;
  border: 2px solid rgb(var(--red), var(--green), var(--blue));
  display: inline-block;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.5rem;
  margin-left: auto;
  margin-right: auto;
  padding: .25rem .5rem;
  text-decoration: none;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
  background-color: rgb(var(--red), var(--green), var(--blue));
  color: #fff;
}
body.page form label {
  display: inline-block;
  color: #374151;
  width: 5rem;
}
body.page form input,
body.page form select,
body.page form textarea {
  background-color: #f3f4f6;
  border-color: transparent;
  border-radius: .375rem;
  display: block;
  margin-top: .25rem;
  width: 100%;
}
body.page form input:focus,
body.page form select:focus,
body.page form textarea:focus {
  background-color: #fff;
  border-color: #6b7280;
  box-shadow: 0 0 0 0 #fff,0 0 0 calc(0px) rgba(59,130,246,.5),0 0 transparent;
}
@media (min-width:768px) {
  .home #description {
    padding-left: 0;
    padding-right: 0;
  }
  body.page form button {
    font-size: 1.125rem;
    line-height: 1.75rem;
    padding: .5rem 1rem;
  }
}
.page.survey form li {
  margin: 1rem;
  clear: both;
}
.page.survey form label {
  width: auto;
}
.page.survey form input,
.page.survey form select {
  float: right;
  width: 12rem;
}
.page.survey form button {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
footer {
  text-align: center;
  vertical-align: bottom;
}
footer a {
  display: inline-block;
  flex-grow: 0;
  font-weight: 700;
  font-size: .75rem;
  line-height: 1rem;
  padding: .75rem;
  color: #374151;
  transition-property: background-color,border-color,color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
footer a:focus {
  color: rgb(var(--red), var(--green), var(--blue));
}
footer img {
  margin: .75rem auto;
}
footer ul {
  align-items: center;
}
footer li {
  display: inline-block;
}
footer > div {
  font-size: .875rem;
  line-height: 1.25rem;
  margin: 1.75rem;
}
footer i {
  display: block;
  height: 2rem;
  width: 2rem;
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
  transition-property: all;
  transition-timing-function: cubic-bezier(.4,0,.2,1);
  transition-duration: .15s;
}
footer i:hover {
  opacity: .9;
}
footer.dark {
  background-color: #111827;
  margin: 0;
  max-width: none;
  padding: 1.25rem;
  color: #d1d5db;
  width: 100vw;
}
footer.dark a {
  color: #e5e7eb;
}
footer.dark a:focus {
  color: #f3f4f6;
}
@media (min-width:640px) {
  footer a {
    padding: .5rem;
  }
}
@media (min-width:1024px) {
  .home h1 {
    font-size: 2.25rem;
    line-height: 2.5rem;
    padding-top: 2.5rem;
  }
  .contact-box {
    grid-template-columns: repeat(2,minmax(0,1fr));
  }
  body.page form button {
    padding: .75rem 1.25rem;
  }
  footer a {
    font-size: .875rem;
    line-height: 1.25rem;
  }
}
.border {
  border-width: 1px;
}
.inline {
  display: inline;
}
.table {
  display: table;
}
.contents {
  display: contents;
}
.float-left {
  float: left;
}
.transform {
  transform: translateX(0) translateY(0) rotate(0) skewX(0) skewY(0) scaleX(1) scaleY(1);
}



{{ $color := site.Params.color | default "#4f46e5" }}
{{ $b := substr $color -2 2 | print "0x" | int}} 
{{ $g := substr $color -4 2 | print "0x" | int}}
{{ $r := substr $color -6 2 | print "0x" | int}} 
:root {
  --red: {{$r}};
  --green: {{$g}};
  --blue: {{$b}};

  -moz-tab-size: 4;
  tab-size: 4;
}

#related .posts {
  display: flex;
  flex-wrap: wrap;
  gap: 20px; /* 调整卡片之间的间距 */
}

#related .posts li {
  flex: 1 1 300px; /* 限制卡片的最小和最大宽度 */
  width: 80%; /* 让每个卡片占据整个容器的宽度 */
}
#related h2 {
  text-align: center; /* 水平居中 */
  font-size: 2em; /* 增大字体，使其更显眼 */
  font-weight: bold; /* 加粗，确保标题突出 */
  color: #333; /* 保持较深的颜色以确保对比 */
  margin-top: 20px; /* 添加适当的上边距 */
}


.pagination {
    display: flex;
    justify-content: center;
    margin: 20px 0;
}

.pagination a {
    padding: 10px 15px;
    margin: 0 5px;
    text-decoration: none;
    color: #0000EE; /* 蓝色字体 */
    border: 1px solid #ddd;
    border-radius: 12px; /* 圆角效果 */
    transition: all 0.3s ease; /* 平滑过渡效果 */
    box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.1); /* 添加轻微阴影 */
    text-decoration: none !important; /* 使用 !important 来强制去除下划线 */
}

.pagination a.current {
    color: #888; /* 当前页码变得暗淡 */
    background-color: #f0f0f0; /* 设置一个浅色背景 */
    cursor: default; /* 鼠标在当前页码上显示默认光标 */
    pointer-events: none; /* 禁止点击 */
}

.pagination a:hover {
    transform: translateY(-3px); /* 鼠标悬浮时向上移动一点 */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* 鼠标悬浮时加重阴影以达到凸出的效果 */
    border-color: #0000EE; /* 鼠标悬浮时边框颜色变为蓝色 */
}



/* 主体样式 */
.categories-list {
    max-width: 1500px;
    margin: 0 auto;
    padding: 0;
}

/* 每个分类卡片的样式 */
.category-item {
    background-color: #b4d39e;
    color: white;
    padding: 15px;/*高度*/
    margin-bottom: 0; /* 卡片之间的间距 */
    border-radius: 0; /* 圆角 */
    transition: all 0.3s ease;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 1100px;
}

/* 卡片标题部分 */
.category-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 14px;
    font-weight: bold;
    cursor: pointer;
}

/* 卡片的箭头图标 */
.arrow {
  font-size: 0.8em; /* 更小的箭头符号 */
  color: #fff;
  transition: transform 0.3s ease;
}

/* 子内容列表默认隐藏 */
.posts-list {
    display: none; /* 默认隐藏 */
    margin: 0; /* 去掉边距 */
    border-radius: 0; /* 保持平直边缘以与父卡片无缝衔接 */
    padding: 0; /* 去掉多余填充 */
    width: 100%; /* 子卡片占满整个宽度 */
    background-color: white; /* 白色背景 */
    border-radius: 0 0 8px 8px; /* 让子卡片与父卡片圆角连接 */
    overflow: hidden; /* 避免超出内容 */
    margin-top: 15px; /* 在子卡片与父卡片标题之间增加空隙 */
}

/* 子内容项样式 */
.post-item {
    display: flex;
    align-items: center;
    margin-bottom: 0px;
    border-radius: 0; /* 圆角 */
    padding: 10px;
    font-size: 13px;  /* 更小的字体 */
    background-color: #fff;  /* 与卡片颜色区分开的浅色 */
}

/* 子内容项前的小圆圈 */
.post-item .circle {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin-right: 10px;
  border: 1px solid black;  /* 黑色边框 */
  border-radius: 50%;  /* 圆形 */
  vertical-align: middle;  /* 与文字对齐 */
}

/* 子内容项链接样式 */
.post-item a {
    color: #ffffff;
    text-decoration: none;
    transition: color 0.2s ease;
}

.post-item a:hover {
    color: #d1ecff; /* 悬浮时链接变为浅色 */
}

/* 展开状态箭头旋转 */
.category-header.open .arrow {
    transform: rotate(90deg);
}


