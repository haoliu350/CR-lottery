package com.fitch.cr.rest.service;

import com.fitch.cr.rest.dto.ApiResponse;
import com.fitch.cr.rest.dto.TestResponse;
import com.fitch.cr.rest.exception.IdNotFoundCustomException;
import org.springframework.stereotype.Service;

/**
 * Created by hliu on 2016/7/5.
 */

@Service
public class TestServiceImpl implements TestService {

    public ApiResponse testServiceException(int id, String name, String desc) {
        if(id == 0 ){
            throw new IdNotFoundCustomException("User Id is 0, not able to apply.");
        } else{
            TestResponse t =  new TestResponse();
            t.setId(id);
            t.setName(name);
            t.setDescription(desc);
            return t;
        }
    }
}
