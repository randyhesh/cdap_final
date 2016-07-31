<c:forEach var="i" begin="1" end="5">
    Item <c:out value="${i}"/><p>
</c:forEach>

<!--
${devices}
<c:forEach items="${devices}" var="device">

    <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
        <div class="card-box tilebox-one">
            <i class="icon-chart pull-xs-right text-muted">${device}</i>
            <h6 class="text-muted text-uppercase m-b-20">${device.name}</h6>
            <h2 class="m-b-20">$<span data-plugin="counterup"></span></h2>
            <span class="label label-pink"> 0% </span> <span class="text-muted"></span>
        </div>
    </div>
</c:forEach>
-->