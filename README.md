# ChatUP-RTMP

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
