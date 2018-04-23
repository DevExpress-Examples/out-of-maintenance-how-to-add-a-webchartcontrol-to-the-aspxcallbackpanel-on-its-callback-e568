Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.XtraCharts
Imports DevExpress.XtraCharts.Web
Imports DevExpress.Web.ASPxClasses
Imports DevExpress.Web.ASPxCallbackPanel
' ...

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub ASPxCallbackPanel1_Callback(ByVal source As Object, ByVal e As CallbackEventArgsBase)
		Dim wbc As New WebChartControl()

		wbc.Series.Add(New Series("Series", ViewType.Line))
		wbc.Series(0).ArgumentScaleType = ScaleType.DateTime
		wbc.Series(0).ValueScaleType = ScaleType.Numerical

		Dim r As New Random()

		For i As Integer = 0 To 4
			wbc.Series(0).Points.Add(New SeriesPoint(DateTime.Today.AddDays(i), (CInt(Fix((r.NextDouble() * 100) * 10))) / 10.0))
		Next i

		wbc.Width = (TryCast(source, ASPxCallbackPanel)).Width

		TryCast(source, ASPxCallbackPanel).Controls.Add(wbc)
	End Sub

End Class
