window.onload = function() {
    const tabsContainer = document.getElementById('tabs-container');
    if (tabsContainer === null) {
        return;
    }

    const childrenArray = Array.from(tabsContainer.children);

    childrenArray.forEach(function(tab) {
        tab.addEventListener('click', toggleTab, false);
    });

    function toggleTab(evt) {
        let i = 0;
        const tabcontent = document.getElementsByClassName("tabcontent");
        const tablinks = document.getElementsByClassName("tablinks");
        const id = '#' + evt.target.id;

        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }

        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        document.getElementById(id).style.display = "block";
        evt.currentTarget.className += " active";
    }
};
