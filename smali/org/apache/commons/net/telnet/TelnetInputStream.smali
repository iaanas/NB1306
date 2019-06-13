.class final Lorg/apache/commons/net/telnet/TelnetInputStream;
.super Ljava/io/BufferedInputStream;
.source "TelnetInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EOF:I = -0x1

.field private static final WOULD_BLOCK:I = -0x2

.field static final _STATE_CR:I = 0x8

.field static final _STATE_DATA:I = 0x0

.field static final _STATE_DO:I = 0x4

.field static final _STATE_DONT:I = 0x5

.field static final _STATE_IAC:I = 0x1

.field static final _STATE_IAC_SB:I = 0x9

.field static final _STATE_SB:I = 0x6

.field static final _STATE_SE:I = 0x7

.field static final _STATE_WILL:I = 0x2

.field static final _STATE_WONT:I = 0x3


# instance fields
.field private __bytesAvailable:I

.field private final __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private __hasReachedEOF:Z

.field private __ioException:Ljava/io/IOException;

.field private volatile __isClosed:Z

.field private final __queue:[I

.field private __queueHead:I

.field private __queueTail:I

.field private __readIsWaiting:Z

.field private __receiveState:I

.field private final __suboption:[I

.field private __suboption_count:I

.field private final __thread:Ljava/lang/Thread;

.field private volatile __threaded:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "client"    # Lorg/apache/commons/net/telnet/TelnetClient;

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "client"    # Lorg/apache/commons/net/telnet/TelnetClient;
    .param p3, "readerThread"    # Z

    .line 57
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    .line 58
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 59
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 61
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 64
    const/16 v1, 0x801

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    .line 65
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    .line 66
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    .line 67
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 70
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 71
    if-eqz p3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    goto :goto_0

    .line 74
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    .line 76
    :goto_0
    return-void
.end method

.method private __processChar(I)Z
    .locals 7
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 309
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 310
    .local v2, "bufferWasEmpty":Z
    :goto_0
    :try_start_1
    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_2

    .line 314
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v4, :cond_1

    .line 316
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    :try_start_2
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/InterruptedException;
    nop

    .end local v2    # "bufferWasEmpty":Z
    .end local p1    # "ch":I
    :try_start_3
    throw v1

    .line 330
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "bufferWasEmpty":Z
    .restart local p1    # "ch":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Queue is full! Cannot process another character."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bufferWasEmpty":Z
    .end local p1    # "ch":I
    throw v1

    .line 335
    .restart local v2    # "bufferWasEmpty":Z
    .restart local p1    # "ch":I
    :cond_2
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v4, :cond_3

    .line 337
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 340
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    aput p1, v4, v5

    .line 341
    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 343
    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v3, v3

    if-lt v4, v3, :cond_4

    .line 344
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    .line 346
    :cond_4
    monitor-exit v0

    .line 347
    return v2

    .line 346
    .end local v2    # "bufferWasEmpty":Z
    :catchall_0
    move-exception v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .restart local v2    # "bufferWasEmpty":Z
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private __read(Z)I
    .locals 6
    .param p1, "mayBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :goto_0
    if-nez p1, :cond_0

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, -0x2

    return v0

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "ch":I
    if-gez v0, :cond_1

    .line 133
    const/4 v0, -0x1

    return v0

    .line 136
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 139
    .end local v1    # "ch":I
    .local v0, "ch":I
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_processAYTResponse()V

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 146
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_spyRead(I)V

    .line 149
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    const/16 v2, 0xf0

    const/4 v3, 0x6

    const/16 v4, 0xff

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 269
    :pswitch_1
    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 281
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v2, v1

    .line 287
    :cond_3
    :goto_1
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 288
    goto :goto_0

    .line 272
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 274
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/net/telnet/TelnetClient;->_processSuboption([II)V

    .line 275
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 276
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 278
    goto :goto_0

    .line 276
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 153
    :pswitch_2
    if-nez v0, :cond_8

    .line 156
    goto :goto_0

    .line 254
    :pswitch_3
    if-eq v0, v4, :cond_6

    .line 261
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 262
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v2, v1

    .line 266
    :cond_5
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 267
    goto :goto_0

    .line 257
    :cond_6
    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 258
    goto :goto_0

    .line 245
    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 247
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDont(I)V

    .line 248
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 249
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 251
    goto/16 :goto_0

    .line 249
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 237
    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 239
    :try_start_5
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDo(I)V

    .line 240
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 241
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 242
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 243
    goto/16 :goto_0

    .line 241
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 229
    :pswitch_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 231
    :try_start_7
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWont(I)V

    .line 232
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 233
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 234
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 235
    goto/16 :goto_0

    .line 233
    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2

    .line 221
    :pswitch_7
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 223
    :try_start_9
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWill(I)V

    .line 224
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 225
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 226
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 227
    goto/16 :goto_0

    .line 225
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 188
    :pswitch_8
    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_1

    .line 215
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 216
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processCommand(I)V

    .line 217
    goto/16 :goto_0

    .line 209
    :pswitch_9
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 210
    goto :goto_3

    .line 200
    :pswitch_a
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 201
    goto/16 :goto_0

    .line 197
    :pswitch_b
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 198
    goto/16 :goto_0

    .line 194
    :pswitch_c
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 195
    goto/16 :goto_0

    .line 191
    :pswitch_d
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 192
    goto/16 :goto_0

    .line 204
    :pswitch_e
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    .line 205
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 206
    goto/16 :goto_0

    .line 212
    :cond_7
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 213
    goto/16 :goto_0

    .line 165
    :cond_8
    :pswitch_f
    if-ne v0, v4, :cond_9

    .line 167
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 168
    goto/16 :goto_0

    .line 172
    :cond_9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 174
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 176
    :try_start_b
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDont(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 177
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_2

    .line 179
    :cond_a
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 181
    :goto_2
    monitor-exit v1

    goto :goto_3

    :catchall_5
    move-exception v2

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2

    .line 183
    :cond_b
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 185
    nop

    .line 292
    :goto_3
    nop

    .line 295
    return v0

    .line 142
    :catchall_6
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method _start()V
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 95
    .local v0, "priority":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 96
    const/16 v0, 0xa

    .line 98
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 99
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 100
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 101
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 102
    return-void
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 556
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_0

    .line 557
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    monitor-exit v0

    return v1

    .line 559
    :cond_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 576
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 578
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 579
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 581
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 586
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 587
    monitor-exit v0

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 361
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    if-nez v3, :cond_a

    .line 369
    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    const/4 v4, 0x1

    if-nez v3, :cond_7

    .line 372
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    .line 373
    monitor-exit v0

    return v5

    .line 377
    :cond_0
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v3, :cond_1

    .line 379
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    :try_start_1
    iput-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 383
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 384
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Fatal thread interruption during read."

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iput-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 396
    const/4 v3, 0x1

    .line 402
    .local v3, "mayBlock":Z
    :goto_1
    :try_start_3
    invoke-direct {p0, v3}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I

    move-result v2
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v6, v2

    .local v6, "ch":I
    const/4 v7, -0x2

    if-gez v2, :cond_2

    .line 403
    if-eq v6, v7, :cond_2

    .line 404
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v6

    .line 424
    :cond_2
    nop

    .line 429
    if-eq v6, v7, :cond_3

    .line 431
    :try_start_5
    invoke-direct {p0, v6}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 434
    :catch_1
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    iget-boolean v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v7, :cond_4

    .line 437
    monitor-exit v0

    return v5

    .line 439
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    nop

    .line 443
    :cond_4
    const/4 v3, 0x0

    .line 447
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    if-lez v2, :cond_6

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    if-lt v2, v7, :cond_5

    goto :goto_3

    :cond_5
    move v2, v6

    goto :goto_1

    .line 449
    :cond_6
    :goto_3
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 451
    .end local v3    # "mayBlock":Z
    .end local v6    # "ch":I
    move v2, v6

    goto :goto_0

    .line 408
    .restart local v3    # "mayBlock":Z
    :catch_2
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/InterruptedIOException;
    .local v2, "ch":I
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 412
    :try_start_7
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 413
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 416
    :try_start_8
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 421
    goto :goto_4

    .line 418
    :catch_3
    move-exception v6

    .line 422
    :goto_4
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 423
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v5

    .line 422
    :catchall_0
    move-exception v5

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v5

    .line 457
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    .end local v2    # "ch":I
    .end local v3    # "mayBlock":Z
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    aget v2, v2, v3

    .line 459
    .restart local v2    # "ch":I
    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v5, v5

    if-lt v3, v5, :cond_8

    .line 460
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    .line 463
    :cond_8
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 466
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_9

    .line 467
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 470
    :cond_9
    monitor-exit v0

    return v2

    .line 364
    .end local v2    # "ch":I
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 365
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 366
    throw v1

    .line 473
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 515
    const/4 v0, 0x0

    return v0

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 521
    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-le p3, v1, :cond_1

    .line 522
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    move p3, v1

    .line 524
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "ch":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 527
    return v2

    .line 530
    :cond_2
    move v0, p2

    .line 534
    .local v0, "off":I
    :goto_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    int-to-byte v4, v1

    aput-byte v4, p1, p2

    .line 536
    add-int/2addr p3, v2

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result p2

    move v1, p2

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    goto :goto_0

    .line 539
    :cond_4
    :goto_1
    sub-int p2, v3, v0

    return p2

    .line 524
    .end local v0    # "off":I
    .end local v1    # "ch":I
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 599
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v3, :cond_4

    .line 603
    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I

    move-result v1
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move v3, v1

    .local v3, "ch":I
    if-gez v1, :cond_0

    .line 604
    goto :goto_3

    .line 633
    :cond_0
    nop

    .line 636
    const/4 v1, 0x0

    .line 639
    .local v1, "notify":Z
    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move v1, v4

    .line 646
    goto :goto_1

    .line 641
    :catch_0
    move-exception v4

    .line 643
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    iget-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v5, :cond_1

    .line 644
    goto :goto_3

    .line 649
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 650
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    .line 652
    .end local v1    # "notify":Z
    :cond_2
    move v1, v3

    goto :goto_0

    .line 625
    .end local v3    # "ch":I
    :catch_1
    move-exception v3

    .line 629
    .local v1, "ch":I
    .local v3, "re":Ljava/lang/RuntimeException;
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 632
    goto :goto_3

    .line 607
    .end local v1    # "ch":I
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 609
    .restart local v1    # "ch":I
    .local v3, "e":Ljava/io/InterruptedIOException;
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 611
    :try_start_4
    iput-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 612
    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 615
    :try_start_5
    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 622
    goto :goto_2

    .line 617
    :catch_3
    move-exception v5

    .line 619
    .local v5, "interrupted":Ljava/lang/InterruptedException;
    :try_start_6
    iget-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v6, :cond_3

    .line 620
    monitor-exit v4

    goto :goto_3

    .line 623
    .end local v5    # "interrupted":Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 661
    .end local v1    # "ch":I
    .end local v3    # "e":Ljava/io/InterruptedIOException;
    :cond_4
    :goto_3
    goto :goto_4

    .line 654
    :catch_4
    move-exception v1

    .line 656
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v3

    .line 658
    :try_start_8
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 659
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 660
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    .line 663
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_4
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4

    .line 665
    :try_start_9
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 666
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 667
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 668
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 670
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 671
    return-void

    .line 668
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 659
    .restart local v1    # "ioe":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method
