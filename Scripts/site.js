// Pizza Palace JavaScript UI interactions

document.addEventListener('DOMContentLoaded', function () {
    console.log("Pizza Palace UI Initialized.");

    // Highlight current active navigation menu item based on current URL path
    const currentPath = window.location.pathname.toLowerCase();
    const navLinks = document.querySelectorAll('.navbar-nav .nav-link, .sidebar .nav-link');

    navLinks.forEach(link => {
        const href = link.getAttribute('href');
        if (href && currentPath.endsWith(href.toLowerCase())) {
            link.classList.add('active');
        }
    });

    // Payment Gateway Card UI switch toggling
    const paymentMethods = document.querySelectorAll('input[name="paymentMethod"]');
    const cardDetailsForm = document.getElementById('cardDetailsForm');

    if (paymentMethods && cardDetailsForm) {
        paymentMethods.forEach(radio => {
            radio.addEventListener('change', function () {
                if (this.value === 'card') {
                    cardDetailsForm.style.display = 'block';
                } else {
                    cardDetailsForm.style.display = 'none';
                }
            });
        });
    }
});

// Toast / Alert Notification Helper
function showNotification(message, type = 'success') {
    const alertBox = document.createElement('div');
    alertBox.className = `alert alert-${type} alert-dismissible fade show position-fixed bottom-0 end-0 m-3 z-3`;
    alertBox.innerHTML = `
        <strong>${message}</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    `;
    document.body.appendChild(alertBox);
    setTimeout(() => {
        alertBox.remove();
    }, 4000);
}
