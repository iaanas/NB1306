.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "threadable"    # Lorg/apache/commons/net/nntp/Threadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/Threadable;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p2, "idTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 106
    .local v1, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    const/4 v2, 0x0

    .line 110
    .local v2, "bogusIdCount":I
    if-eqz v1, :cond_1

    .line 111
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v3, :cond_0

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Bogus-id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :cond_0
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 123
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 124
    new-instance v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    move-object v1, v3

    .line 125
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 126
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    const/4 v3, 0x0

    .line 133
    .local v3, "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "references":[Ljava/lang/String;
    move-object v5, v4

    .local v5, "arr$":[Ljava/lang/String;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 136
    .local v8, "refString":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 139
    .local v9, "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v9, :cond_3

    .line 140
    new-instance v10, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v10}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    move-object v9, v10

    .line 141
    invoke-virtual {p2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    if-eqz v3, :cond_4

    iget-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v10, :cond_4

    if-eq v3, v9, :cond_4

    invoke-virtual {v9, v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 152
    iput-object v3, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 153
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 154
    iput-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 156
    :cond_4
    move-object v3, v9

    .line 134
    .end local v8    # "refString":Ljava/lang/String;
    .end local v9    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    .end local v4    # "references":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_5
    if-eqz v3, :cond_7

    if-eq v3, v1, :cond_6

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    :cond_6
    const/4 v3, 0x0

    .line 171
    :cond_7
    iget-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v4, :cond_c

    .line 174
    const/4 v4, 0x0

    .local v4, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 175
    .local v5, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_2
    if-eqz v5, :cond_9

    .line 177
    if-ne v5, v1, :cond_8

    .line 178
    goto :goto_3

    .line 176
    :cond_8
    move-object v4, v5

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 182
    :cond_9
    :goto_3
    if-eqz v5, :cond_b

    .line 191
    if-nez v4, :cond_a

    .line 192
    iget-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v7, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    .line 194
    :cond_a
    iget-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v6, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 197
    :goto_4
    const/4 v6, 0x0

    iput-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 198
    iput-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 183
    :cond_b
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Didnt find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in parent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 202
    .end local v4    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v5    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    .line 203
    iput-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 204
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 205
    iput-object v1, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 207
    :cond_d
    return-void
.end method

.method private findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/ThreadContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;)",
            "Lorg/apache/commons/net/nntp/ThreadContainer;"
        }
    .end annotation

    .line 215
    .local p1, "idTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 216
    .local v0, "root":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 221
    .local v3, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_1

    .line 222
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_0

    .line 226
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 227
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 223
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c.next is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    .end local v3    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_1
    :goto_1
    goto :goto_0

    .line 230
    :cond_2
    return-object v0
.end method

.method private gatherSubjects(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 11
    .param p1, "root"    # Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "count":I
    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v1, :cond_0

    .line 308
    add-int/lit8 v0, v0, 0x1

    .line 307
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 312
    .end local v1    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    int-to-double v2, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double v2, v2, v4

    double-to-int v2, v2

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 313
    .local v1, "subjectTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    const/4 v0, 0x0

    .line 315
    iget-object v2, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v2, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_1
    if-eqz v2, :cond_6

    .line 316
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 321
    .local v3, "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v3, :cond_1

    .line 322
    iget-object v4, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v3, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 325
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "subj":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 328
    goto :goto_2

    .line 331
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 340
    .local v5, "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v5, :cond_4

    iget-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_3

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_5

    iget-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-nez v6, :cond_5

    .line 346
    :cond_4
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    add-int/lit8 v0, v0, 0x1

    .line 315
    .end local v3    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    .end local v4    # "subj":Ljava/lang/String;
    .end local v5    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_5
    :goto_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 352
    .end local v2    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_6
    if-nez v0, :cond_7

    .line 353
    return-void

    .line 359
    :cond_7
    const/4 v2, 0x0

    .local v2, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v3, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v3, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 360
    .local v4, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_3
    if-eqz v3, :cond_15

    .line 362
    iget-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 365
    .local v5, "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v5, :cond_8

    .line 366
    iget-object v6, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 369
    :cond_8
    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "subj":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 373
    goto/16 :goto_a

    .line 376
    :cond_9
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 378
    .local v8, "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-ne v8, v3, :cond_a

    .line 379
    goto/16 :goto_a

    .line 384
    :cond_a
    if-nez v2, :cond_b

    .line 385
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    .line 387
    :cond_b
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 389
    :goto_4
    iput-object v7, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 391
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v9, :cond_f

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v9, :cond_f

    .line 394
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 395
    .local v9, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_5
    if-eqz v9, :cond_c

    iget-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v10, :cond_c

    .line 396
    iget-object v9, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 400
    :cond_c
    if-eqz v9, :cond_d

    .line 401
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 404
    :cond_d
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_6
    if-eqz v9, :cond_e

    .line 405
    iput-object v8, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 404
    iget-object v9, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_6

    .line 408
    :cond_e
    iput-object v7, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 409
    .end local v9    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    goto :goto_9

    :cond_f
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v9, :cond_12

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v9, :cond_10

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_8

    .line 421
    :cond_10
    new-instance v9, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v9}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 422
    .local v9, "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 423
    iget-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 425
    iget-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 426
    .local v10, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_7
    if-eqz v10, :cond_11

    .line 429
    iput-object v9, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 427
    iget-object v10, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_7

    .line 432
    .end local v10    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_11
    iput-object v7, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 433
    iput-object v7, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 435
    iput-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 436
    iput-object v8, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 439
    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 440
    iput-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_9

    .line 415
    .end local v9    # "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_12
    :goto_8
    iput-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 416
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 417
    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 443
    :goto_9
    move-object v3, v2

    .line 361
    .end local v5    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    .end local v6    # "subj":Ljava/lang/String;
    .end local v8    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_13
    :goto_a
    move-object v2, v3

    move-object v3, v4

    if-nez v4, :cond_14

    goto :goto_b

    :cond_14
    iget-object v7, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_b
    move-object v4, v7

    goto/16 :goto_3

    .line 446
    :cond_15
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 447
    const/4 v1, 0x0

    .line 449
    return-void
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 6
    .param p1, "parent"    # Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 239
    const/4 v0, 0x0

    .local v0, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 240
    .local v2, "next":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v1, :cond_8

    .line 246
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_1

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_1

    .line 247
    if-nez v0, :cond_0

    .line 248
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 250
    :cond_0
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 254
    :goto_1
    move-object v1, v0

    goto :goto_4

    .line 258
    :cond_1
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_6

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_6

    .line 265
    :cond_2
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 268
    .local v3, "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v0, :cond_3

    .line 269
    iput-object v3, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 271
    :cond_3
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 277
    :goto_2
    move-object v4, v3

    .local v4, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_3
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_4

    .line 278
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 277
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3

    .line 281
    :cond_4
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 282
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 286
    move-object v2, v3

    .line 289
    move-object v1, v0

    .line 290
    .end local v3    # "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_5
    goto :goto_4

    :cond_6
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_5

    .line 293
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 241
    :goto_4
    move-object v0, v1

    .line 242
    move-object v1, v2

    .line 243
    if-nez v1, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_5
    move-object v2, v3

    goto :goto_0

    .line 296
    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 56
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/net/nntp/Threadable;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    return-object v0

    .line 60
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "idTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/Threadable;

    .line 64
    .local v3, "t":Lorg/apache/commons/net/nntp/Threadable;
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V

    .end local v3    # "t":Lorg/apache/commons/net/nntp/Threadable;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    return-object v0

    .line 73
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object v2

    .line 74
    .local v2, "root":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 75
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, v2}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 79
    invoke-virtual {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    .line 80
    invoke-direct {p0, v2}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 82
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_7

    .line 86
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v3, "r":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_1
    if-eqz v3, :cond_5

    .line 87
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_4

    .line 88
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 86
    :cond_4
    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 92
    .end local v3    # "r":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_5
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 93
    .local v0, "result":Lorg/apache/commons/net/nntp/Threadable;
    :goto_2
    invoke-virtual {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    .line 95
    return-object v0

    .line 83
    .end local v0    # "result":Lorg/apache/commons/net/nntp/Threadable;
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "root node has a next:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 45
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/net/nntp/Threadable;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .param p1, "messages"    # [Lorg/apache/commons/net/nntp/Threadable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    if-nez p1, :cond_0

    .line 464
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method
