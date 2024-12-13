document.addEventListener('DOMContentLoaded', () => {
    const footnotes = document.querySelectorAll('.footnote-ref');
    footnotes.forEach((footnote, index) => {
      const container = document.createElement('div');
      container.className = 'footnote-container';
      container.textContent = `注脚内容 ${index + 1}`;
      document.body.appendChild(container);
  
      footnote.addEventListener('mousemove', (event) => {
        container.style.display = 'block';
        container.style.left = `${event.pageX + 10}px`;
        container.style.top = `${event.pageY + 10}px`;
      });
  
      footnote.addEventListener('mouseleave', () => {
        container.style.display = 'none';
      });
    });
  });
  