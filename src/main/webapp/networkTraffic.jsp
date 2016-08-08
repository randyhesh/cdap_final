<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jpcap.JpcapCaptor" %>
<%@ page import="jpcap.NetworkInterface" %>
<%@ page import="jpcap.packet.Packet" %>

<div class="row">
    <div class="col-xs-12">
        <div class="page-title-box">
            <h4 class="page-title">Traffic Analyser</h4>
            <ol class="breadcrumb p-0">
                <li>
                    <a href="#">IPS</a>
                </li>
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li class="active">
                    Traffic Analyser
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<%
    Object device = request.getAttribute("selectedDevice");


%>

<div class="row">
    <div class="col-xs-12">
        <div class="card-box tilebox-one">
            <h5 title="Device Name"><%=device %></h5></i>
            <h6 class="text-muted text-uppercase m-b-20" title="Device Description"></h6>
        </div>
    </div>
</div>

<%
    NetworkInterface[] devss = JpcapCaptor.getDeviceList();
    JpcapCaptor captor = JpcapCaptor.openDevice(devss[2], -1, false, 10000);


    while (true) {
        Packet info = captor.getPacket();
        if (info != null) {

        }
    }
%>
