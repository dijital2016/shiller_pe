$(function () {

    $.getJSON('https://www.quandl.com/api/v3/datasets/MULTPL/SP500_INFLADJ_MONTH.json?start_date=1916-11-01&api_key=CRusVu2YyQN9Kz7UJppf')["dataset"]["data"], function (data) {
        // Create the chart
        Highcharts.stockChart('container', {


            rangeSelector: {
                selected: 1
            },

            title: {
                text: 'S&P 500 Index Price'
            },

            series: [{
                name: 'S&P 500 Index',
                data: data,
                tooltip: {
                    valueDecimals: 2
                }
            }]
        });
    });

});
