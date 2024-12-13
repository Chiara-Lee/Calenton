document.addEventListener('DOMContentLoaded', () => {
    try {
      const footnoteRefs = document.querySelectorAll('.footnote-ref');
  
      // 如果没有脚注引用，直接退出
      if (footnoteRefs.length === 0) {
        console.warn('未找到任何脚注引用，脚本终止执行。');
        return;
      }
  
      console.log(`找到 ${footnoteRefs.length} 个脚注引用`);
  
      footnoteRefs.forEach((footnoteRef) => {
        const footnoteId = footnoteRef.getAttribute('href').substring(1); // 获取目标脚注 ID
        console.log(`处理脚注引用: ${footnoteRef.outerHTML}, 指向: ${footnoteId}`);
        const footnote = document.getElementById(footnoteId);
  
        if (footnote) {
          console.log(`找到对应脚注内容: ${footnote.outerHTML}`);
          // 创建脚注容器
          const container = document.createElement('div');
          container.className = 'footnote-container';
          container.innerHTML = footnote.innerHTML; // 使用脚注内容
          container.style.position = 'absolute';
          container.style.display = 'none';
          container.style.background = 'rgba(0, 0, 0, 0.6)';
          container.style.color = '#fff';
          container.style.padding = '5px';
          container.style.borderRadius = '5px';
          document.body.appendChild(container);
  
          // 鼠标悬浮时显示容器
          footnoteRef.addEventListener('mousemove', (event) => {
            container.style.display = 'block';
            container.style.left = `${event.pageX + 10}px`;
            container.style.top = `${event.pageY + 10}px`;
          });
  
          // 鼠标移开时隐藏容器
          footnoteRef.addEventListener('mouseleave', () => {
            container.style.display = 'none';
          });
        } else {
          console.warn(`未找到与脚注引用关联的内容: ${footnoteId}`);
        }
      });
    } catch (error) {
      console.error('脚本执行出错：', error);
    }
  });
  
  