.class public final synthetic LOooO00o/OooO0O0/OooO00o/o00ooo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/storage/ImageSaveRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/storage/ImageSaveRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o00ooo/OooO00o;->OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o00ooo/OooO00o;->OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {v0, p1}, Lcom/android/camera/storage/ImageSaveRequest;->OooO00o(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
