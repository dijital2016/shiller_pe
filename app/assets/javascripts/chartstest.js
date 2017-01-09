const url = 'http://localhost:3000/api/v1/data.json'

window.fetch(url).then((res) => res.json()).then(json => {
    console.table(json)
    const series = [...Array(3)].map((v, i) => {
    	const data = json.map((o) => {
        return [ Date.parse(o.date), Number(o[Object.keys(o)[i+2]]) ]
      })
      return {data: data}
    })
    console.table(series)

    const options = {
    	series: series,
      xAxis: {
      	type: 'datetime'
      }
    }
    const chart = Highcharts.chart('container', options)
  }
)
