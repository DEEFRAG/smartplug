.class public Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
.super Ljava/lang/Object;
.source "DirectoryAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/DirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/videolan/vlc/gui/DirectoryAdapter$Node;",
        ">;"
    }
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/gui/DirectoryAdapter$Node;",
            ">;"
        }
    .end annotation
.end field

.field public isFile:Ljava/lang/Boolean;

.field name:Ljava/lang/String;

.field public parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

.field final synthetic this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

.field visibleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V
    .locals 1
    .param p2, "_name"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_visibleName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->visibleName:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 84
    return-void
.end method


# virtual methods
.method public addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V
    .locals 1
    .param p1, "n"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .prologue
    .line 87
    iput-object p0, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 88
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->compareTo(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)I
    .locals 3
    .param p1, "arg0"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, -0x1

    goto :goto_0

    .line 165
    :cond_1
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public ensureExists(Ljava/lang/String;)Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .locals 4
    .param p1, "_n"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    new-instance v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {v1, v2, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 134
    .local v1, "nn":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 135
    .end local v1    # "nn":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :goto_0
    return-object v0

    .line 130
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 131
    .local v0, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v3, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/videolan/vlc/util/Strings;->nullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public existsChild(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "_n"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 110
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 111
    .local v0, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v2, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/videolan/vlc/util/Strings;->nullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildNode(Ljava/lang/String;)Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .locals 4
    .param p1, "directoryName"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {v0, v2, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 97
    .local v0, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V

    move-object v1, v0

    .line 98
    .end local v0    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .local v1, "n":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 92
    .end local v1    # "n":Ljava/lang/Object;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 93
    .restart local v0    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v3, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 94
    .restart local v1    # "n":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getChildPosition(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)I
    .locals 4
    .param p1, "child"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .prologue
    const/4 v2, -0x1

    .line 117
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 121
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/videolan/vlc/gui/DirectoryAdapter$Node;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 123
    .local v1, "node":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    goto :goto_0
.end method

.method public getVisibleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->visibleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->visibleName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public isFile()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIsFile()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 107
    return-void
.end method

.method public subfilesCount()I
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "c":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    return v0

    .line 148
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 149
    .local v1, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public subfolderCount()I
    .locals 5

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "c":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    return v0

    .line 140
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 141
    .local v1, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
