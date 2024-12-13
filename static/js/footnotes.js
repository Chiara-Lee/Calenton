document.addEventListener('DOMContentLoaded', () => {
    try {
      console.log('脚本加载成功');
      const footnotes = document.querySelectorAll('.footnote-ref');
      console.log(`找到 ${footnotes.length} 个注脚`);
  
      footnotes.forEach((footnote, index) => {
        // 创建注脚内容容器
        const container = document.createElement('div');
        container.className = 'footnote-container';
        container.textContent = `注脚内容 ${index + 1}`;
        container.style.position = 'absolute';
        container.style.display = 'none';
        container.style.background = 'rgba(0, 0, 0, 0.6)';
        container.style.color = '#fff';
        container.style.padding = '5px';
        document.body.appendChild(container);
  
        // 鼠标事件
        footnote.addEventListener('mousemove', (event) => {
          container.style.display = 'block';
          container.style.left = `${event.pageX + 10}px`;
          container.style.top = `${event.pageY + 10}px`;
        });
  
        footnote.addEventListener('mouseleave', () => {
          container.style.display = 'none';
        });
      });
    } catch (error) {
      console.error('脚本执行出错：', error);
    }
  });
  