.class public final Lorg/apache/commons/net/io/DotTerminatedMessageWriter;
.super Ljava/io/Writer;
.source "DotTerminatedMessageWriter.java"


# static fields
.field private static final __LAST_WAS_CR_STATE:I = 0x1

.field private static final __LAST_WAS_NL_STATE:I = 0x2

.field private static final __NOTHING_SPECIAL_STATE:I


# instance fields
.field private __output:Ljava/io/Writer;

.field private __state:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "output"    # Ljava/io/Writer;

    .line 57
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 203
    monitor-exit v0

    return-void

    .line 206
    :cond_0
    iget v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 209
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, ".\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 6
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_2

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    :try_start_0
    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-ne v3, v1, :cond_1

    .line 95
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 99
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 100
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 101
    monitor-exit v0

    return-void

    .line 103
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 82
    :cond_2
    iput v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 83
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(I)V

    .line 84
    monitor-exit v0

    return-void

    .line 86
    :cond_3
    iget v5, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-eq v5, v2, :cond_4

    .line 87
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(I)V

    .line 89
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 90
    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 91
    monitor-exit v0

    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([C)V

    .line 154
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    .line 170
    return-void
.end method

.method public write([C)V
    .locals 2
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    .line 140
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :goto_0
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .local v1, "length":I
    if-lez p3, :cond_0

    .line 123
    add-int/lit8 p3, p2, 0x1

    .end local p2    # "offset":I
    .local p3, "offset":I
    :try_start_0
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, p3

    move p3, v1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception p2

    goto :goto_1

    .end local p3    # "offset":I
    .restart local p2    # "offset":I
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    return-void

    .line 125
    :catchall_1
    move-exception p3

    move-object v2, p3

    move p3, p2

    move-object p2, v2

    .end local p2    # "offset":I
    .restart local p3    # "offset":I
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
