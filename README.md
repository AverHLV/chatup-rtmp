# ChatUP-RTMP

RTMP service for serving streams for ChatUP service.

## Setup

Populate `.env` file, use `.env.example`.

Build images:
```
make container@build
```

Start containers:
```
make container@start
```

## RTMP clients configuration for streaming

### OBS Studio

```
Service: Custom
Server: rtmp://127.0.0.1:1935/live
Stream Key: 1?username=streamer&password=streamer
```

Stream key has this pattern:
```
<broadcast_id>?username=<username>&password=<password>
```
