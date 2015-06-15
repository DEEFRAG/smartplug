.class public interface abstract Lorg/jdom/adapters/DOMAdapter;
.super Ljava/lang/Object;
.source "DOMAdapter.java"


# virtual methods
.method public abstract createDocument()Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public abstract createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public abstract getDocument(Ljava/io/File;Z)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public abstract getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method
