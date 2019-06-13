.class public Lorg/apache/commons/net/nntp/Article;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Lorg/apache/commons/net/nntp/Threadable;


# instance fields
.field private articleId:Ljava/lang/String;

.field private articleNumber:J

.field private date:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private isReply:Z

.field public kid:Lorg/apache/commons/net/nntp/Article;

.field public next:Lorg/apache/commons/net/nntp/Article;

.field private references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private simplifiedSubject:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 41
    return-void
.end method

.method private flushSubjectCache()V
    .locals 1

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;)V
    .locals 2
    .param p0, "article"    # Lorg/apache/commons/net/nntp/Article;

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V

    .line 145
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;I)V
    .locals 1
    .param p0, "article"    # Lorg/apache/commons/net/nntp/Article;
    .param p1, "depth"    # I

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V

    .line 166
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V
    .locals 3
    .param p0, "article"    # Lorg/apache/commons/net/nntp/Article;
    .param p1, "depth"    # I
    .param p2, "ps"    # Ljava/io/PrintStream;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 178
    const-string v1, "==>"

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    if-eqz v0, :cond_1

    .line 182
    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    if-eqz v0, :cond_2

    .line 185
    invoke-static {v0, p1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    .line 187
    :cond_2
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "article"    # Lorg/apache/commons/net/nntp/Article;
    .param p1, "ps"    # Ljava/io/PrintStream;

    .line 155
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V

    .line 156
    return-void
.end method

.method private simplifySubject()V
    .locals 9

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "start":I
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "subject":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 80
    .local v2, "len":I
    const/4 v3, 0x0

    .line 82
    .local v3, "done":Z
    :goto_0
    if-nez v3, :cond_b

    .line 83
    const/4 v3, 0x1

    .line 87
    :goto_1
    const/16 v4, 0x20

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_0
    add-int/lit8 v5, v2, -0x2

    if-ge v0, v5, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_7

    :cond_1
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_7

    .line 95
    :cond_2
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_3

    .line 96
    add-int/lit8 v0, v0, 0x3

    .line 97
    const/4 v3, 0x0

    goto :goto_3

    .line 98
    :cond_3
    add-int/lit8 v5, v2, -0x2

    if-ge v0, v5, :cond_7

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x5b

    if-eq v5, v7, :cond_4

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x28

    if-ne v5, v7, :cond_7

    .line 103
    :cond_4
    add-int/lit8 v5, v0, 0x3

    .line 105
    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 109
    :cond_5
    add-int/lit8 v7, v2, -0x1

    if-ge v5, v7, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_7

    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_7

    .line 113
    add-int/lit8 v0, v5, 0x2

    .line 114
    const/4 v3, 0x0

    .line 119
    .end local v5    # "i":I
    :cond_7
    :goto_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    const-string v6, "(no subject)"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 120
    const-string v5, ""

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 123
    :cond_8
    move v5, v2

    .line 125
    .local v5, "end":I
    :goto_4
    if-le v5, v0, :cond_9

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v4, :cond_9

    .line 126
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 129
    :cond_9
    if-nez v0, :cond_a

    if-ne v5, v2, :cond_a

    .line 130
    iput-object v1, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    goto :goto_5

    .line 132
    :cond_a
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 134
    .end local v5    # "end":I
    :goto_5
    goto/16 :goto_0

    .line 135
    :cond_b
    return-void
.end method


# virtual methods
.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    return-void
.end method

.method public addReference(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .line 48
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 55
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 56
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void

    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleNumber()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    long-to-int v1, v0

    return v1
.end method

.method public getArticleNumberLong()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getReferences()[Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .locals 5

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeDummy()Lorg/apache/commons/net/nntp/Threadable;
    .locals 1

    .line 280
    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    return-object v0
.end method

.method public messageThreadId()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public messageThreadReferences()[Ljava/lang/String;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getReferences()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setArticleNumber(I)V
    .locals 2
    .param p1, "a"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 298
    return-void
.end method

.method public setArticleNumber(J)V
    .locals 0
    .param p1, "l"    # J

    .line 214
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 215
    return-void
.end method

.method public setChild(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 1
    .param p1, "child"    # Lorg/apache/commons/net/nntp/Threadable;

    .line 262
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/nntp/Article;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    .line 263
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    .line 264
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setNext(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 1
    .param p1, "next"    # Lorg/apache/commons/net/nntp/Threadable;

    .line 273
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/nntp/Article;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    .line 274
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    .line 275
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public simplifiedSubject()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->simplifySubject()V

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    return-object v0
.end method

.method public subjectIsReply()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
