<!-- 现有的表单和评论 HTML -->
// JavaScript code to dynamically load comments from Formspree

document.addEventListener('DOMContentLoaded', function() {
    const commentsSection = document.getElementById('comments-section');
    
    // Ensure the comments section exists on the page
    if (commentsSection) {
      fetch('https://formspree.io/f/mwpkvgag/submissions', {
      .then(response => response.json())
      .then(data => {
        // Log data for debugging
        console.log(data);
        
        // Iterate over each submission and create a comment element
        data.submissions.forEach(comment => {
          const commentElement = document.createElement('div');
          commentElement.className = 'comment';
          commentElement.innerHTML = `
            <p><strong>${comment.data.name}</strong></p>
            <p>${comment.data.message}</p>
          `;
          commentsSection.appendChild(commentElement);
        });
      })
      .catch(error => {
        console.error('Error fetching comments:', error);
      });
    }
  });
  
