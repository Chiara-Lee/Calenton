document.addEventListener("DOMContentLoaded", () => {
  console.log("脚注功能初始化");

  document.querySelectorAll(".footnote-ref").forEach(ref => {
      ref.addEventListener("mouseover", (event) => {
          const footnoteId = ref.getAttribute("href").substring(1); // 获取脚注内容 ID
          const footnote = document.getElementById(footnoteId);

          if (!footnote) {
              console.error("未找到对应的脚注内容:", footnoteId);
              return;
          }

          // 删除旧的弹出框
          let popup = document.querySelector(".footnote-popup");
          if (popup) popup.remove();

          // 创建新的弹出框
          popup = document.createElement("div");
          popup.className = "footnote-popup";
          popup.innerHTML = footnote.innerHTML;
          document.body.appendChild(popup);

          // 设置弹出框的位置
          const rect = ref.getBoundingClientRect();
          popup.style.top = `${rect.bottom + window.scrollY}px`;
          popup.style.left = `${rect.left + rect.width / 2 + window.scrollX}px`;

          // 激活弹出框显示
          requestAnimationFrame(() => popup.classList.add("active"));

          // 鼠标移出时移除弹出框
          ref.addEventListener("mouseout", () => {
              popup.remove();
          });
      });
  });
});
