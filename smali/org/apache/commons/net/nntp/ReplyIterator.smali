.class Lorg/apache/commons/net/nntp/ReplyIterator;
.super Ljava/lang/Object;
.source "ReplyIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private line:Ljava/lang/String;

.field private final reader:Ljava/io/BufferedReader;

.field private savedException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/io/BufferedReader;)V
    .locals 1
    .param p1, "_reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;Z)V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/io/BufferedReader;Z)V
    .locals 1
    .param p1, "_reader"    # Ljava/io/BufferedReader;
    .param p2, "addDotReader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->savedException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 63
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/ReplyIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->savedException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 74
    .local v0, "prev":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ex":Ljava/io/IOException;
    iput-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->savedException:Ljava/lang/Exception;

    .line 84
    iget-object v2, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    invoke-static {v2}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v0

    .line 75
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 71
    .end local v0    # "prev":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
