import React from "react";

const NotifReportList = ({
  leave_requests,
  departmentIdToName,
  employeeIdToName,
  leaveTypeIdToName,
}) => {
  return (
    <div>
      <h3 className="text-center form-title mb-4">Current on Leave</h3>
      <hr />
      <div className="table-responsive">
        <table className="table table-sm table-hover caption-top">
          <caption>
            {leave_requests && leave_requests.length} records were found on
            leave
          </caption>
          <thead>
            <tr>
              <th>Emp. Name</th>
              <th>Department</th>
              <th>Leave Type</th>
              <th>Start Date</th>
              <th>End Date</th>
              <th>Description</th>
            </tr>
          </thead>
          <tbody>
            {leave_requests &&
              leave_requests.map((leave_request) => {
                return (
                  <tr
                    key={leave_request.id}
                    id={leave_request.id % 2 === 0 ? "orange" : "green"}
                  >
                    <td>{employeeIdToName(leave_request.employee)}</td>
                    <td>{departmentIdToName(leave_request.employee)}</td>
                    <td>{leaveTypeIdToName(leave_request.leave)}</td>
                    <td>{leave_request.start_date}</td>
                    <td>{leave_request.end_date}</td>
                    <td>{leave_request.description}</td>
                  </tr>
                );
              })}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default NotifReportList;
