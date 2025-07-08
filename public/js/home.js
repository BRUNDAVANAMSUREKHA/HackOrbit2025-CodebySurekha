document.addEventListener("DOMContentLoaded", function () {
  
    // Select all cards
    const cards = document.querySelectorAll(".card");
  
    // Create Intersection Observer for animations
    const observer = new IntersectionObserver(
      (entries, observer) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add("active");
            observer.unobserve(entry.target);
          }
        });
      },
      { threshold: 0.1 }
    );
  
    // Observe each card
    cards.forEach((card) => observer.observe(card));
  });
  