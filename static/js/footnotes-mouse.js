document.addEventListener("DOMContentLoaded", () => {
  console.log("脚注功能初始化");

  document.querySelectorAll(".footnote-ref").forEach(ref => {
      let popup;

      // 鼠标移入时创建弹出框
      ref.addEventListener("mouseover", (event) => {
          const footnoteId = ref.getAttribute("href").substring(1);
          const footnote = document.getElementById(footnoteId);

          if (!footnote) {
              console.error("未找到对应的脚注内容:", footnoteId);
              return;
          }

          // 创建新的弹出框
          popup = document.createElement("div");
          popup.className = "footnote-popup";
          popup.innerHTML = footnote.innerHTML;
          document.body.appendChild(popup);

          // 设置初始位置
          const offsetX = 15;
          const offsetY = 15;
          popup.style.top = `${event.clientY + offsetY}px`;
          popup.style.left = `${event.clientX + offsetX}px`;

          // 显示弹出框
          requestAnimationFrame(() => popup.classList.add("active"));
          console.log("弹出框已创建并显示:", popup);
      });

      // 鼠标移动时动态更新弹出框位置
      ref.addEventListener("mousemove", (event) => {
          if (popup) {
              const offsetX = 15;
              const offsetY = 15;
              let top = event.clientY + offsetY;
              let left = event.clientX + offsetX;

              // 确保弹出框不会超出视口范围
              const popupRect = popup.getBoundingClientRect();
              if (top + popupRect.height > window.innerHeight) {
                  top = window.innerHeight - popupRect.height - offsetY;
              }
              if (left + popupRect.width > window.innerWidth) {
                  left = window.innerWidth - popupRect.width - offsetX;
              }

              popup.style.top = `${top}px`;
              popup.style.left = `${left}px`;
          }
      });

      // 鼠标移出时移除弹出框
      ref.addEventListener("mouseout", () => {
          if (popup) {
              popup.remove();
              popup = null;
              console.log("弹出框已移除");
          }
      });
  });
});




  
  