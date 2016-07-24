<c:forEach items="${devices}" var="device">
    <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
        <div class="card-box tilebox-one">
            <i class="icon-chart pull-xs-right text-muted"></i>
            <h6 class="text-muted text-uppercase m-b-20">${device.name}</h6>
            <h2 class="m-b-20">$<span data-plugin="counterup">15.9</span></h2>
            <span class="label label-pink"> 0% </span> <span class="text-muted">${device.description}</span>
        </div>
    </div>
</c:forEach>
