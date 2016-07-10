package com.fitch.cr.rest.service;

import com.fitch.cr.rest.dto.ApiResponse;
import com.fitch.cr.rest.dto.TestResponse;
import com.fitch.cr.rest.exception.IdNotFoundCustomException;

/**
 * Created by hliu on 2016/7/5.
 */
public interface TestService {

    public ApiResponse testServiceException(int id, String name, String desc);

}
