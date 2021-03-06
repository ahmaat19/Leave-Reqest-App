import {
  GET_LEAVE_REQUESTS,
  ADD_LEAVE_REQUEST,
  DELETE_LEAVE_REQUEST,
  UPDATE_LEAVE_REQUEST,
  GET_LEAVE_REQUEST_FILTER,
  GET_LEAVE_REQUEST_FILTER_NOTIF,
  URL,
} from "./types";
import { createMessage, returnErrors } from "./messageActions";
import axios from "axios";
import { tokenConfig } from "./authActions";

export const getLeaveRequests = () => (dispatch, getState) => {
  axios
    .get(`${URL}api/leave-request/`, tokenConfig(getState))
    .then((leave_requests) => {
      dispatch({
        type: GET_LEAVE_REQUESTS,
        payload: leave_requests.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

export const addLeaveRequest = (leave_request) => (dispatch, getState) => {
  console.log(leave_request);
  axios
    .post(`${URL}api/leave-request/`, leave_request, tokenConfig(getState))
    .then((res) => {
      dispatch(
        createMessage({
          addLeaveRequest: "Leave Request Added",
        })
      );
      dispatch({
        type: ADD_LEAVE_REQUEST,
        payload: res.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

export const deleteLeaveRequest = (id) => (dispatch, getState) => {
  axios
    .delete(`${URL}api/leave-request/${id}/`, tokenConfig(getState))
    .then((leave_tequests) => {
      dispatch(
        createMessage({
          deleteLeaveRequest: "Leave Request Deleted",
        })
      );
      dispatch({
        type: DELETE_LEAVE_REQUEST,
        payload: id,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

export const updateLeaveRequest = (leave_request) => (dispatch, getState) => {
  axios
    .put(
      `${URL}api/leave-request/${leave_request.id}/`,
      leave_request,
      tokenConfig(getState)
    )
    .then((res) => {
      dispatch(
        createMessage({
          updateLeaveRequest: "LeaveRequest Updated",
        })
      );
      dispatch({
        type: UPDATE_LEAVE_REQUEST,
        payload: res.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

// Filter Action
export const getLeaveRequestFilter = (
  employee,
  leave,
  start_date,
  end_date
) => (dispatch, getState) => {
  axios
    .get(
      `${URL}api/leave-request-filter/?employee=${employee}&leave=${leave}&start_date__lte=${end_date}&start_date__gte=${start_date}&end_date__gte=`,
      tokenConfig(getState)
    )
    .then((leave_requests) => {
      dispatch({
        type: GET_LEAVE_REQUEST_FILTER,
        payload: leave_requests.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

// Notifications
export const getLeaveRequestFilterNotif = (current_date) => (
  dispatch,
  getState
) => {
  axios
    .get(
      `${URL}api/leave-request-filter/?employee=&leave=&start_date__lte=&start_date__gte=&end_date__gte=${current_date}`,
      tokenConfig(getState)
    )
    .then((leave_requests) => {
      dispatch({
        type: GET_LEAVE_REQUEST_FILTER_NOTIF,
        payload: leave_requests.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};
