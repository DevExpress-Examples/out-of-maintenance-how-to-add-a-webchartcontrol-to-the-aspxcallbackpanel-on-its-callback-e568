<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxp" %>

<%@ Register Assembly="DevExpress.XtraCharts.v13.1.Web, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<span style="font-size: 16pt"><strong>How to add WebChartControl to the ASPxCallbackPanel
			on its callback.</strong></span><br />
		<br />
		<br />
		<span style="color: blue">This is a static chart:</span><br />
		<dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="chart"
			 Height="261px" Width="532px">
			<SeriesSerializable>
				<cc1:Series ArgumentScaleType="Numerical"  Name="Series 1"
					 >
					<LabelSerializable>
<cc1:PointSeriesLabel hiddenserializablestring="to be serialized">
					</cc1:PointSeriesLabel>
</LabelSerializable>
					<points>
<cc1:SeriesPoint ArgumentSerializable="1" Values="0.2"></cc1:SeriesPoint>
<cc1:SeriesPoint ArgumentSerializable="2" Values="0.6"></cc1:SeriesPoint>
<cc1:SeriesPoint ArgumentSerializable="3" Values="0.4"></cc1:SeriesPoint>
<cc1:SeriesPoint ArgumentSerializable="4" Values="0.5"></cc1:SeriesPoint>
</points>
					<PointOptionsSerializable>
<cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
</PointOptionsSerializable>
					<LegendPointOptionsSerializable>
<cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
</LegendPointOptionsSerializable>
					<ViewSerializable>
<cc1:LineSeriesView hiddenserializablestring="to be serialized"></cc1:LineSeriesView>
</ViewSerializable>
				</cc1:Series>
			</SeriesSerializable>
			<SeriesTemplate  
				>
				<PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
				</cc1:PointOptions>
</PointOptionsSerializable>
				<LabelSerializable>
<cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized">
				</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
				<LegendPointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
				</cc1:PointOptions>
</LegendPointOptionsSerializable>
				<ViewSerializable>
<cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
				</cc1:SideBySideBarSeriesView>
</ViewSerializable>
			</SeriesTemplate>
			<DiagramSerializable>
<cc1:XYDiagram>
				<axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
				<axisx visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisx>
			</cc1:XYDiagram>
</DiagramSerializable>
			<FillStyle >
				<OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
			</FillStyle>
		</dxchartsui:WebChartControl>
		<br />
		<br />
		<br />
		<hr/>
		<br />
		<br />
		<span style="color: #0000ff">Press this button to initiate a callback and add a chart
			to the <span style="color: #000000">ASPxCallbackPanel</span>:</span><br />
		<dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Add chart">
			<ClientSideEvents Click="function(s, e) {
	panel.PerformCallback(&quot;test&quot;);
}" />
		</dxe:ASPxButton>
		<br />

	</div>
		<dxcp:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" BackColor="#FFFF80"
			ClientInstanceName="panel" OnCallback="ASPxCallbackPanel1_Callback" Width="700px">
			<PanelCollection>
				<dxp:PanelContent runat="server" _designerRegion="0">ASPxCallbackPanel<br /><br />&nbsp;</dxp:PanelContent>
			</PanelCollection>
		</dxcp:ASPxCallbackPanel>
		<br />
		<br />
		&nbsp;
	</form>
</body>
</html>