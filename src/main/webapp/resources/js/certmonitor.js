function loadDataToMonitorsTable() {
    console.log("loading data to MonitorsTable");
    $.ajax({
        async: true,
        crossDomain: false,
        url: getContextPath() + "/getMonitors/sysadmin",
        method: "GET",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            cleanMonitorsTable();
            populateMonitorsTable(data);
        },
        error: function (er) {
            console.log(er);
        }
    });
}

function cleanMonitorsTable() {
    var tableBody = document.getElementById("monitors-table-body");
    var rowCount = tableBody.childElementCount;
    for (var i = 0; i < rowCount; i++) {
        tableBody.deleteRow(0);
    }
}


function populateMonitorsTable(data) {
    if (data.length === 0) {
        console.error("Error loading table data..!!")
    } else {
        for (var i = 0; i < data.length; i++) {
            monitor = data[i];
            var html_text =
                '<tr>\n' +
                '  <th><input type="checkbox" id="check-all" class="flat" value="" ' + getCheckedValue(monitor.enabled) + '></th>\n' +
                '  <td>' + monitor.monitorName + '</td>\n' +
                '  <td>Certificate Validity</td>\n' +
                '  <td>' + getStatus(monitor.status) + '</td>\n' +
                '  <td>' + resolveUrl(monitor) + '</td>\n' +
                '  <td>\n' +
                '      <div class="row">\n' +
                '        <div class="col-md-6">\n' +
                '            <div class="btn-group">\n' +
                '              <button class="btn btn-success" type="button">Run</button>\n' +
                '              <button class="btn btn-warning" type="button">Edit</button>\n' +
                '              <button class="btn btn-danger" type="button">Delete</button>\n' +
                '            </div>\n' +
                '        </div>\n' +
                '      </div>\n' +
                '  </td>\n' +
                '</tr>';
            $('#monitors-table-body').append(html_text);
        }
    }
}

function resolveUrl(monitor) {
    if (monitor.port !== null && monitor.port !== "") {
        return monitor.hostName + ":" + monitor.port;
    } else {
        return monitor.hostName;
    }
}

function getStatus(booleanValue) {
    return booleanValue ? "OK" : "Failed";
}

function getCheckedValue(booleanValue) {
    return booleanValue ? "checked" : "";
}

