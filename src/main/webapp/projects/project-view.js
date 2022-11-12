Highcharts.chart('eeueb-chart', {
    credits: {
        enabled: false
    }, chart: {
        style: {
            fontFamily: 'Segoe UI'
        }, plotBackgroundColor: null, plotBorderWidth: null, plotShadow: false, type: 'pie', options3d: {
            enabled: true, alpha: 50
        }
    }, title: {
        text: undefined
    }, tooltip: {
        followPointer: false,
        headerFormat: undefined,
        shadow: false,
        hideDelay: 100,
        pointFormat: '{point.name}: <b>{point.percentage:.1f}% = {point.y} kWh/year</b>',
    }, plotOptions: {
        pie: {
            innerSize: '30%', depth: 60, dataLabels: {}
        }
    }, series: [{
        name: 'Breakout', data: [{
            name: 'Spacing cooling', y: 728910,
        }, {
            name: 'Lighting and Plug Load', y: 65520,
        }, {
            name: 'Miscellaneous', y: 24570,
        }]
    }]
});
