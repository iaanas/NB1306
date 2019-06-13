.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I

.field private totalBytesReceived:J

.field private totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 82
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    return-wide v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 25
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p4

    move/from16 v3, p5

    const-string v4, "Connection timed out."

    .line 149
    const/4 v5, 0x0

    .line 150
    .local v5, "bytesRead":I
    const/4 v6, 0x0

    .line 151
    .local v6, "lastBlock":I
    const/4 v7, 0x1

    .line 152
    .local v7, "block":I
    const/4 v8, 0x0

    .line 153
    .local v8, "hostPort":I
    const/4 v9, 0x0

    .line 155
    .local v9, "dataLength":I
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 157
    if-nez v2, :cond_0

    .line 158
    new-instance v10, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v11, p3

    invoke-direct {v10, v11}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p3    # "output":Ljava/io/OutputStream;
    .local v10, "output":Ljava/io/OutputStream;
    goto :goto_0

    .line 157
    .end local v10    # "output":Ljava/io/OutputStream;
    .restart local p3    # "output":Ljava/io/OutputStream;
    :cond_0
    move-object/from16 v11, p3

    move-object v10, v11

    .line 161
    .end local p3    # "output":Ljava/io/OutputStream;
    .restart local v10    # "output":Ljava/io/OutputStream;
    :goto_0
    new-instance v11, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v12, p1

    invoke-direct {v11, v0, v3, v12, v2}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 162
    .local v11, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v13, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v3, v14}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 164
    .local v13, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 166
    const/4 v14, 0x1

    .local v14, "justStarted":Z
    const/4 v15, 0x0

    move/from16 v16, v5

    move-object v5, v0

    move-object v0, v15

    .line 169
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v5, "host":Ljava/net/InetAddress;
    .local v16, "bytesRead":I
    :goto_1
    :try_start_0
    invoke-virtual {v1, v11}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    .line 170
    const/16 v17, 0x1

    .line 171
    .local v17, "wantReply":Z
    const/16 v18, 0x0

    move v2, v7

    move v7, v6

    move-object v6, v0

    .line 174
    .end local v6    # "lastBlock":I
    .local v2, "block":I
    .local v7, "lastBlock":I
    .local v18, "timeouts":I
    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    move-object/from16 v19, v0

    .line 177
    .local v19, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v0

    move/from16 p3, v0

    .line 178
    .local p3, "recdPort":I
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_31
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_30
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_2f
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-object/from16 p4, v0

    .line 179
    .local p4, "recdAddress":Ljava/net/InetAddress;
    if-eqz v14, :cond_2

    .line 180
    const/4 v14, 0x0

    .line 181
    move/from16 v20, v7

    move/from16 v7, p3

    .end local p3    # "recdPort":I
    .local v7, "recdPort":I
    .local v20, "lastBlock":I
    if-eq v7, v3, :cond_1

    .line 188
    move v8, v7

    .line 189
    :try_start_2
    invoke-virtual {v13, v8}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 190
    move-object/from16 v3, p4

    .end local p4    # "recdAddress":Ljava/net/InetAddress;
    .local v3, "recdAddress":Ljava/net/InetAddress;
    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 192
    move-object v5, v3

    .line 193
    invoke-virtual {v13, v5}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 194
    invoke-virtual {v11, v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 264
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_0
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v6, v20

    goto/16 :goto_b

    .line 248
    :catch_1
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    goto/16 :goto_c

    .line 244
    :catch_2
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    goto/16 :goto_d

    .line 182
    .restart local v7    # "recdPort":I
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p4    # "recdAddress":Ljava/net/InetAddress;
    :cond_1
    move-object/from16 v3, p4

    .end local p4    # "recdAddress":Ljava/net/InetAddress;
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    :try_start_3
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v21, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .local v21, "host":Ljava/net/InetAddress;
    :try_start_4
    const-string v5, "INCORRECT SOURCE PORT"
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 p4, v8

    const/4 v8, 0x5

    .end local v8    # "hostPort":I
    .local p4, "hostPort":I
    :try_start_5
    invoke-direct {v0, v3, v7, v8, v5}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object v15, v0

    .line 185
    .local v15, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 186
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect source port ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") in request reply."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "block":I
    .end local v9    # "dataLength":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v20    # "lastBlock":I
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p4    # "hostPort":I
    .end local p5    # "port":I
    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 264
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "block":I
    .restart local v9    # "dataLength":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local v20    # "lastBlock":I
    .restart local v21    # "host":Ljava/net/InetAddress;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p4    # "hostPort":I
    .restart local p5    # "port":I
    :catchall_1
    move-exception v0

    move/from16 v8, p4

    move-object/from16 v5, v21

    goto/16 :goto_f

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_3
    move-exception v0

    move/from16 v8, p4

    move-object/from16 v24, v11

    move/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_b

    .line 248
    :catch_4
    move-exception v0

    move/from16 v8, p4

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_c

    .line 244
    :catch_5
    move-exception v0

    move/from16 v8, p4

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_d

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local p4    # "hostPort":I
    .restart local v8    # "hostPort":I
    :catchall_2
    move-exception v0

    move/from16 p4, v8

    move-object/from16 v5, v21

    .end local v8    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_f

    .line 252
    .end local p4    # "hostPort":I
    .restart local v8    # "hostPort":I
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_6
    move-exception v0

    move/from16 p4, v8

    move-object/from16 v24, v11

    move/from16 v6, v20

    move-object/from16 v5, v21

    .end local v8    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_b

    .line 248
    .end local p4    # "hostPort":I
    .restart local v8    # "hostPort":I
    :catch_7
    move-exception v0

    move/from16 p4, v8

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    move-object/from16 v5, v21

    .end local v8    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_c

    .line 244
    .end local p4    # "hostPort":I
    .restart local v8    # "hostPort":I
    :catch_8
    move-exception v0

    move/from16 p4, v8

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    move-object/from16 v5, v21

    .end local v8    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_d

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    :catchall_3
    move-exception v0

    move-object/from16 v21, v5

    move/from16 p4, v8

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .restart local v21    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_f

    .line 252
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_9
    move-exception v0

    move-object/from16 v21, v5

    move/from16 p4, v8

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .restart local v21    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_b

    .line 248
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    :catch_a
    move-exception v0

    move-object/from16 v21, v5

    move/from16 p4, v8

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .restart local v21    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_c

    .line 244
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    :catch_b
    move-exception v0

    move-object/from16 v21, v5

    move/from16 p4, v8

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .restart local v21    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_d

    .line 179
    .end local v20    # "lastBlock":I
    .end local v21    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .local v7, "lastBlock":I
    .restart local v8    # "hostPort":I
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p3    # "recdPort":I
    .local p4, "recdAddress":Ljava/net/InetAddress;
    :cond_2
    move-object/from16 v3, p4

    move-object/from16 v21, v5

    move/from16 v20, v7

    move/from16 p4, v8

    move/from16 v7, p3

    .line 199
    .end local p3    # "recdPort":I
    .end local p4    # "recdAddress":Ljava/net/InetAddress;
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .local v7, "recdPort":I
    .restart local v20    # "lastBlock":I
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne v7, v8, :cond_a

    .line 200
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2e
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_2d
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_2c
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    move/from16 v22, v9

    .end local v9    # "dataLength":I
    .local v22, "dataLength":I
    const/4 v9, 0x3

    if-eq v0, v9, :cond_5

    const/4 v9, 0x5

    if-eq v0, v9, :cond_4

    .line 236
    .local v6, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 p3, v6

    .end local v6    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local p3, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_8
    const-string v6, "Received unexpected packet type ("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v20    # "lastBlock":I
    .end local v22    # "dataLength":I
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 248
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local v20    # "lastBlock":I
    .restart local v22    # "dataLength":I
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catch_c
    move-exception v0

    move-object/from16 v23, p3

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_c

    .line 244
    :catch_d
    move-exception v0

    move-object/from16 v23, p3

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_d

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    :catchall_4
    move-exception v0

    move/from16 v9, v22

    goto/16 :goto_f

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_e
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_b

    .line 248
    :catch_f
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v23, p3

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_c

    .line 244
    :catch_10
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v23, p3

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_d

    .line 203
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "recdPort":I
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_4
    :try_start_9
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    move-object v15, v0

    .line 204
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v23, v6

    :try_start_a
    const-string v6, "Error code "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v20    # "lastBlock":I
    .end local v22    # "dataLength":I
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v0
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_11
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 248
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local v20    # "lastBlock":I
    .restart local v22    # "dataLength":I
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catch_11
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_c

    .line 244
    :catch_12
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_d

    .line 248
    :catch_13
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_c

    .line 244
    :catch_14
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_d

    .line 200
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "recdPort":I
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_5
    move-object/from16 v23, v6

    .line 207
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_start_b
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_28
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_27
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_26
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object v6, v0

    .line 208
    .restart local v6    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_c
    invoke-virtual {v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v0
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_24
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_26
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move v9, v0

    .line 209
    .end local v22    # "dataLength":I
    .restart local v9    # "dataLength":I
    :try_start_d
    invoke-virtual {v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v0
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_23
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_22
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_21
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move/from16 p3, v0

    .line 211
    .end local v20    # "lastBlock":I
    .local p3, "lastBlock":I
    move-object/from16 v24, v11

    move/from16 v11, p3

    .end local p3    # "lastBlock":I
    .local v11, "lastBlock":I
    .local v24, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    if-ne v11, v2, :cond_7

    .line 213
    :try_start_e
    invoke-virtual {v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v0

    invoke-virtual {v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v12

    invoke-virtual {v10, v0, v12, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_18
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_16
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 220
    nop

    .line 221
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    add-int/lit8 v2, v2, 0x1

    .line 222
    const v0, 0xffff

    if-le v2, v0, :cond_6

    .line 224
    const/4 v2, 0x0

    .line 226
    :cond_6
    const/4 v0, 0x0

    move/from16 v17, v0

    move-object/from16 p3, v6

    move/from16 v21, v9

    .end local v17    # "wantReply":Z
    .local v0, "wantReply":Z
    goto/16 :goto_7

    .line 264
    .end local v0    # "wantReply":Z
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v6    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v7    # "recdPort":I
    .end local v18    # "timeouts":I
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_5
    move-exception v0

    move/from16 v20, v11

    move-object/from16 v11, v24

    goto/16 :goto_f

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_15
    move-exception v0

    move v6, v11

    goto/16 :goto_b

    .line 248
    :catch_16
    move-exception v0

    move-object/from16 v23, v6

    move v6, v11

    goto/16 :goto_c

    .line 244
    :catch_17
    move-exception v0

    move-object/from16 v23, v6

    move v6, v11

    goto/16 :goto_d

    .line 214
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "recdPort":I
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_18
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_f
    new-instance v12, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_f .. :try_end_f} :catch_1b
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 p3, v6

    .local p3, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_10
    const-string v6, "File write failed."
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_10 .. :try_end_10} :catch_1b
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move/from16 v21, v9

    const/4 v9, 0x3

    .end local v9    # "dataLength":I
    .local v21, "dataLength":I
    :try_start_11
    invoke-direct {v12, v5, v8, v9, v6}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object v15, v12

    .line 218
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 219
    nop

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "hostPort":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v11    # "lastBlock":I
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v21    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "hostPort":I
    .restart local v9    # "dataLength":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "lastBlock":I
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catch_19
    move-exception v0

    goto :goto_4

    .line 244
    :catch_1a
    move-exception v0

    goto :goto_5

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    :catchall_6
    move-exception v0

    move/from16 v21, v9

    move/from16 v20, v11

    move-object/from16 v11, v24

    .end local v9    # "dataLength":I
    .restart local v21    # "dataLength":I
    goto/16 :goto_f

    .line 252
    .end local v21    # "dataLength":I
    .restart local v9    # "dataLength":I
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_1b
    move-exception v0

    move/from16 v21, v9

    move v6, v11

    .end local v9    # "dataLength":I
    .restart local v21    # "dataLength":I
    goto/16 :goto_b

    .line 248
    .end local v21    # "dataLength":I
    .restart local v9    # "dataLength":I
    :catch_1c
    move-exception v0

    move-object/from16 p3, v6

    :goto_4
    move/from16 v21, v9

    move-object/from16 v23, p3

    move v6, v11

    .end local v9    # "dataLength":I
    .restart local v21    # "dataLength":I
    goto/16 :goto_c

    .line 244
    .end local v21    # "dataLength":I
    .restart local v9    # "dataLength":I
    :catch_1d
    move-exception v0

    move-object/from16 p3, v6

    :goto_5
    move/from16 v21, v9

    move-object/from16 v23, p3

    move v6, v11

    .end local v9    # "dataLength":I
    .restart local v21    # "dataLength":I
    goto/16 :goto_d

    .line 211
    .end local v21    # "dataLength":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "recdPort":I
    .restart local v9    # "dataLength":I
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_7
    move-object/from16 p3, v6

    move/from16 v21, v9

    const v0, 0xffff

    .line 228
    .end local v9    # "dataLength":I
    .restart local v21    # "dataLength":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/io/InterruptedIOException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_11 .. :try_end_11} :catch_1e
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 229
    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v2, -0x1

    :goto_6
    if-ne v11, v0, :cond_9

    .line 230
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 236
    :cond_9
    :goto_7
    move-object/from16 v23, p3

    goto/16 :goto_a

    .line 264
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_7
    move-exception v0

    move/from16 v20, v11

    move/from16 v9, v21

    move-object/from16 v11, v24

    goto/16 :goto_f

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_1e
    move-exception v0

    move v6, v11

    move/from16 v9, v21

    goto/16 :goto_b

    .line 248
    :catch_1f
    move-exception v0

    move-object/from16 v23, p3

    move v6, v11

    move/from16 v9, v21

    goto/16 :goto_c

    .line 244
    :catch_20
    move-exception v0

    move-object/from16 v23, p3

    move v6, v11

    move/from16 v9, v21

    goto/16 :goto_d

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v21    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .local v11, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v20    # "lastBlock":I
    :catchall_8
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v24, v11

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v21    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_f

    .line 252
    .end local v21    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_21
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v21    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_b

    .line 248
    .end local v21    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_22
    move-exception v0

    move-object/from16 p3, v6

    move/from16 v21, v9

    move-object/from16 v24, v11

    move-object/from16 v23, p3

    move/from16 v6, v20

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v21    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_c

    .line 244
    .end local v21    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_23
    move-exception v0

    move-object/from16 p3, v6

    move/from16 v21, v9

    move-object/from16 v24, v11

    move-object/from16 v23, p3

    move/from16 v6, v20

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v21    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_d

    .line 248
    .end local v21    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "dataLength":I
    :catch_24
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v24, v11

    move-object/from16 v23, p3

    goto :goto_8

    .line 244
    :catch_25
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v24, v11

    move-object/from16 v23, p3

    goto :goto_9

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    :catchall_9
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v9, v22

    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_f

    .line 252
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_26
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v6, v20

    move/from16 v9, v22

    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_b

    .line 248
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_27
    move-exception v0

    move-object/from16 v24, v11

    :goto_8
    move/from16 v6, v20

    move/from16 v9, v22

    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_c

    .line 244
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_28
    move-exception v0

    move-object/from16 v24, v11

    :goto_9
    move/from16 v6, v20

    move/from16 v9, v22

    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_d

    .line 199
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "recdPort":I
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_a
    move-object/from16 v23, v6

    move/from16 v22, v9

    move-object/from16 v24, v11

    .line 239
    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_start_12
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v6, "Unexpected host or port."

    const/4 v9, 0x5

    invoke-direct {v0, v3, v7, v9, v6}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object v15, v0

    .line 242
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_2b
    .catch Ljava/io/InterruptedIOException; {:try_start_12 .. :try_end_12} :catch_2a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_12 .. :try_end_12} :catch_29
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move/from16 v11, v20

    move/from16 v21, v22

    .line 254
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "recdPort":I
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v19    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v20    # "lastBlock":I
    .end local v22    # "dataLength":I
    .local v11, "lastBlock":I
    .restart local v21    # "dataLength":I
    :goto_a
    move v7, v11

    move/from16 v9, v21

    move-object/from16 v6, v23

    goto/16 :goto_e

    .line 264
    .end local v11    # "lastBlock":I
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v21    # "dataLength":I
    .restart local v20    # "lastBlock":I
    .restart local v22    # "dataLength":I
    :catchall_a
    move-exception v0

    move/from16 v9, v22

    move-object/from16 v11, v24

    goto/16 :goto_f

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_29
    move-exception v0

    move/from16 v6, v20

    move/from16 v9, v22

    goto :goto_b

    .line 248
    :catch_2a
    move-exception v0

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_c

    .line 244
    :catch_2b
    move-exception v0

    move/from16 v6, v20

    move/from16 v9, v22

    goto/16 :goto_d

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .local v11, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_b
    move-exception v0

    move/from16 v22, v9

    move-object/from16 v24, v11

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_f

    .line 252
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_2c
    move-exception v0

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_b

    .line 248
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_2d
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_c

    .line 244
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_2e
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_d

    .line 264
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    .end local v20    # "lastBlock":I
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v7, "lastBlock":I
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_c
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v20, v7

    move/from16 p4, v8

    move/from16 v22, v9

    move-object/from16 v24, v11

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v7    # "lastBlock":I
    .end local v8    # "hostPort":I
    .end local v9    # "dataLength":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v20    # "lastBlock":I
    .local v21, "host":Ljava/net/InetAddress;
    .restart local v22    # "dataLength":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local p4, "hostPort":I
    goto/16 :goto_f

    .line 252
    .end local v20    # "lastBlock":I
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local v22    # "dataLength":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v7    # "lastBlock":I
    .restart local v8    # "hostPort":I
    .restart local v9    # "dataLength":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :catch_2f
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v20, v7

    move/from16 p4, v8

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .line 253
    .end local v7    # "lastBlock":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .local v6, "lastBlock":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_b
    :try_start_13
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad packet: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v6    # "lastBlock":I
    .end local v8    # "hostPort":I
    .end local v9    # "dataLength":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v3

    .line 248
    .end local v0    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v7    # "lastBlock":I
    .restart local v8    # "hostPort":I
    .restart local v9    # "dataLength":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catch_30
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v20, v7

    move/from16 p4, v8

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .line 249
    .end local v7    # "lastBlock":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Ljava/io/InterruptedIOException;
    .restart local v6    # "lastBlock":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_c
    add-int/lit8 v3, v18, 0x1

    .end local v18    # "timeouts":I
    .local v3, "timeouts":I
    iget v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v3, v7, :cond_b

    .line 254
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    move/from16 v18, v3

    move v7, v6

    move-object/from16 v6, v23

    goto :goto_e

    .line 250
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_b
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v6    # "lastBlock":I
    .end local v8    # "hostPort":I
    .end local v9    # "dataLength":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v7

    .line 244
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v3    # "timeouts":I
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v7    # "lastBlock":I
    .restart local v8    # "hostPort":I
    .restart local v9    # "dataLength":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local v18    # "timeouts":I
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catch_31
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v20, v7

    move/from16 p4, v8

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v6, v20

    .line 245
    .end local v7    # "lastBlock":I
    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v6    # "lastBlock":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_d
    add-int/lit8 v3, v18, 0x1

    .end local v18    # "timeouts":I
    .restart local v3    # "timeouts":I
    iget v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    if-ge v3, v7, :cond_e

    .line 254
    .end local v0    # "e":Ljava/net/SocketException;
    move/from16 v18, v3

    move v7, v6

    move-object/from16 v6, v23

    .line 255
    .end local v3    # "timeouts":I
    .end local v6    # "lastBlock":I
    .restart local v7    # "lastBlock":I
    .restart local v18    # "timeouts":I
    :goto_e
    if-nez v17, :cond_d

    .line 257
    :try_start_14
    invoke-virtual {v13, v7}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    .line 258
    move-object v11, v13

    .line 259
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    add-int v16, v16, v9

    .line 260
    move/from16 p3, v2

    .end local v2    # "block":I
    .local p3, "block":I
    :try_start_15
    iget-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    move-object/from16 p4, v5

    move-object v0, v6

    .end local v5    # "host":Ljava/net/InetAddress;
    .local p4, "host":Ljava/net/InetAddress;
    int-to-long v5, v9

    add-long/2addr v2, v5

    :try_start_16
    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 261
    .end local v17    # "wantReply":Z
    .end local v18    # "timeouts":I
    const/16 v2, 0x200

    if-eq v9, v2, :cond_c

    .line 262
    invoke-virtual {v1, v11}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 265
    nop

    .line 266
    return v16

    .line 261
    :cond_c
    move-object/from16 v12, p1

    move/from16 v2, p2

    move-object/from16 v5, p4

    move/from16 v3, p5

    move v6, v7

    move/from16 v7, p3

    goto/16 :goto_1

    .line 264
    :catchall_d
    move-exception v0

    move/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v20, v7

    goto :goto_f

    .end local p4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :catchall_e
    move-exception v0

    move-object/from16 p4, v5

    move/from16 v2, p3

    move/from16 v20, v7

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p4    # "host":Ljava/net/InetAddress;
    goto :goto_f

    .end local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p3    # "block":I
    .end local p4    # "host":Ljava/net/InetAddress;
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_f
    move-exception v0

    move/from16 p3, v2

    move-object/from16 p4, v5

    move/from16 v20, v7

    move-object/from16 v11, v24

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "block":I
    .restart local p4    # "host":Ljava/net/InetAddress;
    goto :goto_f

    .line 255
    .end local p3    # "block":I
    .end local p4    # "host":Ljava/net/InetAddress;
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v17    # "wantReply":Z
    .restart local v18    # "timeouts":I
    :cond_d
    move/from16 p3, v2

    move-object/from16 p4, v5

    move-object v0, v6

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "block":I
    .restart local p4    # "host":Ljava/net/InetAddress;
    move-object/from16 v12, p1

    move/from16 v3, p5

    move-object/from16 v11, v24

    goto/16 :goto_2

    .line 246
    .end local v7    # "lastBlock":I
    .end local v18    # "timeouts":I
    .end local p3    # "block":I
    .end local p4    # "host":Ljava/net/InetAddress;
    .restart local v0    # "e":Ljava/net/SocketException;
    .restart local v2    # "block":I
    .restart local v3    # "timeouts":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v6    # "lastBlock":I
    :cond_e
    :try_start_17
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "block":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v6    # "lastBlock":I
    .end local v8    # "hostPort":I
    .end local v9    # "dataLength":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v14    # "justStarted":Z
    .end local v16    # "bytesRead":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    .line 264
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v3    # "timeouts":I
    .end local v17    # "wantReply":Z
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v6    # "lastBlock":I
    .restart local v8    # "hostPort":I
    .restart local v9    # "dataLength":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v13    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v14    # "justStarted":Z
    .restart local v16    # "bytesRead":I
    .restart local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catchall_10
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v11, v24

    goto :goto_f

    .end local v2    # "block":I
    .end local v24    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v7, "block":I
    .restart local v11    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_11
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v20, v6

    move v2, v7

    .end local v6    # "lastBlock":I
    .end local v7    # "block":I
    .restart local v2    # "block":I
    .restart local v20    # "lastBlock":I
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    throw v0
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 543
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 503
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 523
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 21
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v10, p5

    const-string v11, "Connection timed out."

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "block":I
    const/4 v12, 0x0

    .line 358
    .local v12, "hostPort":I
    const/4 v13, 0x1

    .line 359
    .local v13, "justStarted":Z
    const/4 v14, 0x0

    .line 361
    .local v14, "lastAckWait":Z
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 363
    if-nez v2, :cond_0

    .line 364
    new-instance v3, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v15, v3

    .end local p3    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    goto :goto_0

    .line 363
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local p3    # "input":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v4, p3

    move-object v15, v4

    .line 367
    .end local p3    # "input":Ljava/io/InputStream;
    .local v15, "input":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v9, p1

    move-object/from16 v8, p4

    invoke-direct {v3, v8, v10, v9, v2}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    move-object/from16 v16, v3

    .line 368
    .local v16, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v17, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v3, v17

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 370
    .local v3, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v0

    move-object v0, v5

    move-object/from16 v4, v16

    const/4 v6, 0x0

    move-object/from16 v5, p4

    .line 376
    .end local v0    # "block":I
    .end local v16    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v4, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v5, "host":Ljava/net/InetAddress;
    .local v7, "block":I
    :goto_1
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 377
    const/4 v8, 0x1

    .line 378
    .local v8, "wantReply":Z
    const/4 v9, 0x0

    move/from16 v16, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .line 381
    .end local v7    # "block":I
    .local v8, "block":I
    .local v9, "timeouts":I
    .local v16, "wantReply":Z
    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    .line 382
    .local v0, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 p3, v17

    .line 383
    .local p3, "recdAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v17
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 p4, v17

    .line 386
    .local p4, "recdPort":I
    if-eqz v13, :cond_3

    .line 387
    const/4 v13, 0x0

    .line 388
    move/from16 v2, p4

    .end local p4    # "recdPort":I
    .local v2, "recdPort":I
    if-eq v2, v10, :cond_2

    .line 395
    move v12, v2

    .line 396
    :try_start_2
    invoke-virtual {v3, v12}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 397
    move-object/from16 v10, p3

    .end local p3    # "recdAddress":Ljava/net/InetAddress;
    .local v10, "recdAddress":Ljava/net/InetAddress;
    invoke-virtual {v5, v10}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 398
    move-object v5, v10

    .line 399
    invoke-virtual {v3, v5}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 400
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v4

    goto/16 :goto_3

    .line 397
    :cond_1
    move-object/from16 v19, v4

    goto/16 :goto_3

    .line 475
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdPort":I
    .end local v9    # "timeouts":I
    .end local v10    # "recdAddress":Ljava/net/InetAddress;
    .end local v16    # "wantReply":Z
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_d

    .line 445
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_8

    .line 441
    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v7

    goto/16 :goto_9

    .line 437
    :catch_2
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v7

    goto/16 :goto_a

    .line 389
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "recdPort":I
    .restart local p3    # "recdAddress":Ljava/net/InetAddress;
    :cond_2
    move-object/from16 v10, p3

    .end local p3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v10    # "recdAddress":Ljava/net/InetAddress;
    move-object/from16 v19, v4

    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v19, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_start_3
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 p3, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .local p3, "host":Ljava/net/InetAddress;
    :try_start_4
    const-string v5, "INCORRECT SOURCE PORT"
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 p4, v12

    const/4 v12, 0x5

    .end local v12    # "hostPort":I
    .local p4, "hostPort":I
    :try_start_5
    invoke-direct {v4, v10, v2, v12, v5}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object v6, v4

    .line 392
    .local v6, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 393
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect source port ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") in request reply."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "block":I
    .end local v13    # "justStarted":Z
    .end local v14    # "lastAckWait":Z
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .end local p5    # "port":I
    throw v4
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 475
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdPort":I
    .end local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v9    # "timeouts":I
    .end local v10    # "recdAddress":Ljava/net/InetAddress;
    .end local v16    # "wantReply":Z
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "block":I
    .restart local v13    # "justStarted":Z
    .restart local v14    # "lastAckWait":Z
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    .restart local p5    # "port":I
    :catchall_1
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v12, p4

    move-object/from16 v17, v3

    goto/16 :goto_d

    .line 445
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :catch_3
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v12, p4

    goto/16 :goto_8

    .line 441
    :catch_4
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v12, p4

    move/from16 v20, v7

    goto/16 :goto_9

    .line 437
    :catch_5
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v12, p4

    move/from16 v20, v7

    goto/16 :goto_a

    .line 475
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    .end local p4    # "hostPort":I
    .restart local v12    # "hostPort":I
    :catchall_2
    move-exception v0

    move/from16 p4, v12

    move-object/from16 v5, p3

    move-object/from16 v17, v3

    .end local v12    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_d

    .line 445
    .end local p4    # "hostPort":I
    .restart local v9    # "timeouts":I
    .restart local v12    # "hostPort":I
    .restart local v16    # "wantReply":Z
    :catch_6
    move-exception v0

    move/from16 p4, v12

    move-object/from16 v5, p3

    .end local v12    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_8

    .line 441
    .end local p4    # "hostPort":I
    .restart local v12    # "hostPort":I
    :catch_7
    move-exception v0

    move/from16 p4, v12

    move-object/from16 v5, p3

    move/from16 v20, v7

    .end local v12    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_9

    .line 437
    .end local p4    # "hostPort":I
    .restart local v12    # "hostPort":I
    :catch_8
    move-exception v0

    move/from16 p4, v12

    move-object/from16 v5, p3

    move/from16 v20, v7

    .end local v12    # "hostPort":I
    .restart local p4    # "hostPort":I
    goto/16 :goto_a

    .line 475
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v12    # "hostPort":I
    :catchall_3
    move-exception v0

    move-object/from16 p3, v5

    move/from16 p4, v12

    move-object/from16 v17, v3

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v12    # "hostPort":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_d

    .line 445
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v9    # "timeouts":I
    .restart local v12    # "hostPort":I
    .restart local v16    # "wantReply":Z
    :catch_9
    move-exception v0

    move-object/from16 p3, v5

    move/from16 p4, v12

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v12    # "hostPort":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_8

    .line 441
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v12    # "hostPort":I
    :catch_a
    move-exception v0

    move-object/from16 p3, v5

    move/from16 p4, v12

    move/from16 v20, v7

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v12    # "hostPort":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_9

    .line 437
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v12    # "hostPort":I
    :catch_b
    move-exception v0

    move-object/from16 p3, v5

    move/from16 p4, v12

    move/from16 v20, v7

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v12    # "hostPort":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p4    # "hostPort":I
    goto/16 :goto_a

    .line 386
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v12    # "hostPort":I
    .local p3, "recdAddress":Ljava/net/InetAddress;
    .local p4, "recdPort":I
    :cond_3
    move-object/from16 v10, p3

    move/from16 v2, p4

    move-object/from16 v19, v4

    move-object/from16 p3, v5

    move/from16 p4, v12

    .line 405
    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p3    # "recdAddress":Ljava/net/InetAddress;
    .end local p4    # "recdPort":I
    .restart local v2    # "recdPort":I
    .restart local v10    # "recdAddress":Ljava/net/InetAddress;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_3
    :try_start_6
    invoke-virtual {v5, v10}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v2, v12, :cond_8

    .line 407
    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v4
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 p3, v5

    const/4 v5, 0x4

    .end local v5    # "host":Ljava/net/InetAddress;
    .local p3, "host":Ljava/net/InetAddress;
    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    .line 428
    .restart local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v7, "lastBlock":I
    :try_start_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Received unexpected packet type."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "block":I
    .end local v12    # "hostPort":I
    .end local v13    # "justStarted":Z
    .end local v14    # "lastAckWait":Z
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p5    # "port":I
    throw v4
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 441
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdPort":I
    .end local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v7    # "lastBlock":I
    .end local v10    # "recdAddress":Ljava/net/InetAddress;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "block":I
    .restart local v12    # "hostPort":I
    .restart local v13    # "justStarted":Z
    .restart local v14    # "lastAckWait":Z
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p5    # "port":I
    :catch_c
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v20, v7

    goto/16 :goto_9

    .line 437
    :catch_d
    move-exception v0

    move-object/from16 v5, p3

    move/from16 v20, v7

    goto/16 :goto_a

    .line 409
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "recdPort":I
    .restart local v10    # "recdAddress":Ljava/net/InetAddress;
    :cond_4
    :try_start_8
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    move-object v6, v4

    .line 410
    .restart local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move/from16 v20, v7

    :try_start_9
    const-string v7, "Error code "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " received: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "block":I
    .end local v12    # "hostPort":I
    .end local v13    # "justStarted":Z
    .end local v14    # "lastAckWait":Z
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p5    # "port":I
    throw v4

    .line 441
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdPort":I
    .end local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v10    # "recdAddress":Ljava/net/InetAddress;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "block":I
    .restart local v12    # "hostPort":I
    .restart local v13    # "justStarted":Z
    .restart local v14    # "lastAckWait":Z
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p3    # "host":Ljava/net/InetAddress;
    .restart local p5    # "port":I
    :catch_e
    move-exception v0

    move/from16 v20, v7

    goto :goto_6

    .line 437
    :catch_f
    move-exception v0

    move/from16 v20, v7

    goto :goto_7

    .line 407
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "recdPort":I
    .restart local v10    # "recdAddress":Ljava/net/InetAddress;
    :cond_5
    move/from16 v20, v7

    .line 414
    .restart local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v4
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move v7, v4

    .line 416
    .restart local v7    # "lastBlock":I
    if-ne v7, v8, :cond_7

    .line 417
    add-int/lit8 v8, v8, 0x1

    .line 418
    const v4, 0xffff

    if-le v8, v4, :cond_6

    .line 420
    const/4 v4, 0x0

    move v8, v4

    .line 422
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 424
    :cond_7
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 426
    nop

    .line 428
    .end local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v7    # "lastBlock":I
    :goto_4
    move/from16 v20, v7

    goto :goto_5

    .line 405
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :cond_8
    move-object/from16 p3, v5

    move/from16 v20, v7

    .line 431
    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    :try_start_b
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v5, "Unexpected host or port."

    const/4 v7, 0x5

    invoke-direct {v4, v10, v2, v7, v5}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object v6, v4

    .line 435
    .restart local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_11
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 447
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdPort":I
    .end local v6    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v10    # "recdAddress":Ljava/net/InetAddress;
    :goto_5
    move-object/from16 v5, p3

    move/from16 v7, v20

    goto/16 :goto_b

    .line 475
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    :catchall_4
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v17, v3

    goto/16 :goto_d

    .line 445
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :catch_10
    move-exception v0

    move-object/from16 v5, p3

    goto :goto_8

    .line 441
    :catch_11
    move-exception v0

    :goto_6
    move-object/from16 v5, p3

    goto :goto_9

    .line 437
    :catch_12
    move-exception v0

    :goto_7
    move-object/from16 v5, p3

    goto/16 :goto_a

    .line 475
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :catchall_5
    move-exception v0

    move-object/from16 p3, v5

    move-object/from16 v17, v3

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    goto/16 :goto_d

    .line 445
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :catch_13
    move-exception v0

    move-object/from16 p3, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    goto :goto_8

    .line 441
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :catch_14
    move-exception v0

    move-object/from16 p3, v5

    move/from16 v20, v7

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    goto :goto_9

    .line 437
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :catch_15
    move-exception v0

    move-object/from16 p3, v5

    move/from16 v20, v7

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    goto :goto_a

    .line 475
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :catchall_6
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 p3, v5

    move/from16 p4, v12

    move-object/from16 v17, v3

    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v12    # "hostPort":I
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p3    # "host":Ljava/net/InetAddress;
    .local p4, "hostPort":I
    goto/16 :goto_d

    .line 445
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p3    # "host":Ljava/net/InetAddress;
    .end local p4    # "hostPort":I
    .restart local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v9    # "timeouts":I
    .restart local v12    # "hostPort":I
    .restart local v16    # "wantReply":Z
    :catch_16
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 p3, v5

    move/from16 p4, v12

    .line 446
    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_8
    :try_start_c
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad packet: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "block":I
    .end local v12    # "hostPort":I
    .end local v13    # "justStarted":Z
    .end local v14    # "lastAckWait":Z
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v2

    .line 441
    .end local v0    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "block":I
    .restart local v12    # "hostPort":I
    .restart local v13    # "justStarted":Z
    .restart local v14    # "lastAckWait":Z
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catch_17
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 p3, v5

    move/from16 v20, v7

    move/from16 p4, v12

    .line 442
    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Ljava/io/InterruptedIOException;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    iget v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v9, v2, :cond_9

    .line 447
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    move/from16 v7, v20

    goto :goto_b

    .line 443
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_9
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "block":I
    .end local v12    # "hostPort":I
    .end local v13    # "justStarted":Z
    .end local v14    # "lastAckWait":Z
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 475
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "block":I
    .restart local v12    # "hostPort":I
    .restart local v13    # "justStarted":Z
    .restart local v14    # "lastAckWait":Z
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catchall_7
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_d

    .line 437
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :catch_18
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 p3, v5

    move/from16 v20, v7

    move/from16 p4, v12

    .line 438
    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_a
    add-int/lit8 v9, v9, 0x1

    :try_start_d
    iget v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-ge v9, v2, :cond_f

    .line 447
    .end local v0    # "e":Ljava/net/SocketException;
    move/from16 v7, v20

    .line 449
    :goto_b
    if-nez v16, :cond_e

    .line 451
    if-eqz v14, :cond_a

    .line 452
    nop

    .line 475
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 476
    nop

    .line 477
    return-void

    .line 455
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :cond_a
    const/16 v0, 0x200

    .line 456
    .local v0, "dataLength":I
    const/4 v2, 0x4

    .line 457
    .local v2, "offset":I
    const/4 v4, 0x0

    .line 458
    .local v4, "totalThisPacket":I
    const/4 v10, 0x0

    .line 460
    .local v10, "bytesRead":I
    :goto_c
    if-lez v0, :cond_b

    move-object/from16 p3, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    :try_start_e
    iget-object v5, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    invoke-virtual {v15, v5, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move v10, v5

    if-lez v5, :cond_c

    .line 461
    add-int/2addr v2, v10

    .line 462
    sub-int/2addr v0, v10

    .line 463
    add-int/2addr v4, v10

    move-object/from16 v5, p3

    goto :goto_c

    .line 460
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :cond_b
    move-object/from16 p3, v5

    .line 465
    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local p3    # "host":Ljava/net/InetAddress;
    :cond_c
    const/16 v5, 0x200

    if-ge v4, v5, :cond_d

    .line 467
    const/4 v5, 0x1

    move v14, v5

    .line 469
    :cond_d
    :try_start_f
    invoke-virtual {v3, v8}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 470
    iget-object v5, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move/from16 v18, v2

    const/4 v2, 0x4

    .end local v2    # "offset":I
    .local v18, "offset":I
    invoke-virtual {v3, v5, v2, v4}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 471
    move-object v2, v3

    .line 472
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v2, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    move-object/from16 p4, v2

    move-object/from16 v17, v3

    .end local v2    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v17, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local p4, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_start_10
    iget-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    move-object/from16 v20, v6

    int-to-long v5, v4

    add-long/2addr v2, v5

    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 473
    .end local v0    # "dataLength":I
    .end local v4    # "totalThisPacket":I
    .end local v9    # "timeouts":I
    .end local v10    # "bytesRead":I
    .end local v16    # "wantReply":Z
    .end local v18    # "offset":I
    move/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    move v6, v7

    move v7, v8

    move-object/from16 v3, v17

    move-object/from16 v0, v20

    goto/16 :goto_1

    .line 475
    :catchall_8
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v19, p4

    goto :goto_d

    .end local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local p4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_9
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v5, p3

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    goto :goto_d

    .line 449
    .end local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local p3    # "host":Ljava/net/InetAddress;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v9    # "timeouts":I
    .restart local v16    # "wantReply":Z
    :cond_e
    move-object/from16 v17, v3

    move-object/from16 p3, v5

    move-object/from16 v20, v6

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local p3    # "host":Ljava/net/InetAddress;
    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v4, v19

    goto/16 :goto_2

    .line 439
    .end local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local p3    # "host":Ljava/net/InetAddress;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :cond_f
    move-object/from16 v17, v3

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_11
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "block":I
    .end local v12    # "hostPort":I
    .end local v13    # "justStarted":Z
    .end local v14    # "lastAckWait":Z
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "mode":I
    .end local p5    # "port":I
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 475
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v9    # "timeouts":I
    .end local v16    # "wantReply":Z
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "block":I
    .restart local v12    # "hostPort":I
    .restart local v13    # "justStarted":Z
    .restart local v14    # "lastAckWait":Z
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "mode":I
    .restart local p5    # "port":I
    :catchall_a
    move-exception v0

    goto :goto_d

    .end local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catchall_b
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    goto :goto_d

    .end local v8    # "block":I
    .end local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v4, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v7, "block":I
    :catchall_c
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move v8, v7

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v4    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v7    # "block":I
    .restart local v8    # "block":I
    .restart local v17    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v19    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    throw v0
.end method

.method public setMaxTimeouts(I)V
    .locals 1
    .param p1, "numTimeouts"    # I

    .line 96
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 97
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0

    .line 99
    :cond_0
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 101
    :goto_0
    return-void
.end method
