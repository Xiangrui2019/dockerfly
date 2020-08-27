var dockerfly = {
    homeDisplay: function () {
        this.hiddenAll();
        $(".home").css({"display": "inline"});
    },
    siteDisplay: function () {
        this.hiddenAll();
        $(".site").css({"display": "inline"});
    },
    serviceDisplay: function () {
        this.hiddenAll();
        $(".service").css({"display": "inline"});
    },
    logDisplay: function () {
        this.hiddenAll();
        $(".log").css({"display": "inline"});
    },
    helpDisplay: function () {
        this.hiddenAll();
        $(".help").css({"display": "inline"});
    },
    hiddenAll: function () {
        $(".home").css({"display": "none"});
        $(".site").css({"display": "none"});
        $(".service").css({"display": "none"});
        $(".log").css({"display": "none"});
        $(".help").css({"display": "none"});
    },
    blocks: {
        home: homePage
    }
};
