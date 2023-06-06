// Auto-generated. Do not edit!

// (in-package quizpkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class subtractsrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type subtractsrvRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int64(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type subtractsrvRequest
    let len;
    let data = new subtractsrvRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quizpkg/subtractsrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36d09b846be0b371c5f190354dd3153e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a
    int64 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new subtractsrvRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

class subtractsrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sub = null;
    }
    else {
      if (initObj.hasOwnProperty('sub')) {
        this.sub = initObj.sub
      }
      else {
        this.sub = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type subtractsrvResponse
    // Serialize message field [sub]
    bufferOffset = _serializer.int64(obj.sub, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type subtractsrvResponse
    let len;
    let data = new subtractsrvResponse(null);
    // Deserialize message field [sub]
    data.sub = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quizpkg/subtractsrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5a20f081f63696a93c70a6384724004';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sub
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new subtractsrvResponse(null);
    if (msg.sub !== undefined) {
      resolved.sub = msg.sub;
    }
    else {
      resolved.sub = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: subtractsrvRequest,
  Response: subtractsrvResponse,
  md5sum() { return '9eb98bb9850f1c1774cf3ff3d5ba1aec'; },
  datatype() { return 'quizpkg/subtractsrv'; }
};
