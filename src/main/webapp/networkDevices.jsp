<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="row">
    <div class="col-xs-12">
        <div class="page-title-box">
            <h4 class="page-title">Network Devices</h4>
            <ol class="breadcrumb p-0">
                <li>
                    <a href="#">IPS</a>
                </li>
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li class="active">
                    Network Devices
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
    </div>
</div>


<div class="row">
    <c:forEach items="${devices}" var="device">
        <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
            <div class="card-box tilebox-one">
                <h5 title="Device Name">${device.name}</h5></i>
                <h6 class="text-muted text-uppercase m-b-20" title="Device Description">${device.description}</h6>
                Datalink : <h6 class="m-b-20"><span data-plugin="counterup" title="Datalink">${device.datalink_name} - ${device.datalink_description}</span></h6>
                <span class="label label-pink pull-right" style="cursor:pointer" onclick="getTraffic('${device}')">Proceed</span>
            </div>
        </div>
    </c:forEach>
</div>

<script type="text/javascript">

    function getTraffic(selectedDevice) {

        $.ajax({
            type: "POST",
            url: "/capturePackets",
            data: 'device=' + selectedDevice,
            success: function (data) {
                $("#main_content").html(data);
            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });
    }

</script>