using System;
using DevExpress.XtraCharts;
using DevExpress.XtraCharts.Web;
using DevExpress.Web;
// ...

public partial class _Default : System.Web.UI.Page {

    protected void ASPxCallbackPanel1_Callback(object source, CallbackEventArgsBase e) {
        WebChartControl wbc = new WebChartControl();

        wbc.Series.Add(new Series("Series", ViewType.Line));
        wbc.Series[0].ArgumentScaleType = ScaleType.DateTime;
        wbc.Series[0].ValueScaleType = ScaleType.Numerical;

        Random r = new Random();

        for (int i = 0; i < 5; i++) {
            wbc.Series[0].Points.Add(new SeriesPoint(DateTime.Today.AddDays(i),
                ((int)((r.NextDouble() * 100) * 10)) / 10.0));
        }

        wbc.Width = (source as ASPxCallbackPanel).Width;

        (source as ASPxCallbackPanel).Controls.Add(wbc);
    }

}
