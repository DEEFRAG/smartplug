.class LJDOMAbout$Info;
.super Ljava/lang/Object;
.source "JDOMAbout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJDOMAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# static fields
.field private static final INFO_FILENAME:Ljava/lang/String; = "META-INF/jdom-info.xml"


# instance fields
.field final authors:Ljava/util/List;

.field final copyright:Ljava/lang/String;

.field final description:Ljava/lang/String;

.field final license:Ljava/lang/String;

.field final support:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field final version:Ljava/lang/String;

.field final website:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, LJDOMAbout$Info;->authors:Ljava/util/List;

    .line 202
    invoke-direct {p0}, LJDOMAbout$Info;->getInfoFileStream()Ljava/io/InputStream;

    move-result-object v5

    .line 204
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v2, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v2}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 207
    .local v2, "builder":Lorg/jdom/input/SAXBuilder;
    invoke-virtual {v2, v5}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v3

    .line 208
    .local v3, "doc":Lorg/jdom/Document;
    invoke-virtual {v3}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v7

    .line 210
    .local v7, "root":Lorg/jdom/Element;
    const-string v8, "title"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->title:Ljava/lang/String;

    .line 211
    const-string v8, "version"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->version:Ljava/lang/String;

    .line 212
    const-string v8, "copyright"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->copyright:Ljava/lang/String;

    .line 213
    const-string v8, "description"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->description:Ljava/lang/String;

    .line 214
    const-string v8, "license"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->license:Ljava/lang/String;

    .line 215
    const-string v8, "support"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->support:Ljava/lang/String;

    .line 216
    const-string v8, "web-site"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LJDOMAbout$Info;->website:Ljava/lang/String;

    .line 218
    const-string v8, "author"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "authorElements":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 222
    .local v4, "element":Lorg/jdom/Element;
    new-instance v0, LJDOMAbout$Author;

    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "e-mail"

    invoke-virtual {v4, v9}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, LJDOMAbout$Author;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v0, "author":LJDOMAbout$Author;
    iget-object v8, p0, LJDOMAbout$Info;->authors:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v0    # "author":LJDOMAbout$Author;
    .end local v4    # "element":Lorg/jdom/Element;
    :cond_0
    return-void
.end method

.method private getInfoFileStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "META-INF/jdom-info.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 236
    .local v0, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "META-INF/jdom-info.xml not found; it should be within the JDOM JAR but wasn\'t found on the classpath"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    return-object v0
.end method
