.class public Lcom/android/camera/module/loader/camera2/FocusManager$2;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/module/loader/camera2/FocusTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$600(Lcom/android/camera/module/loader/camera2/FocusManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusResult: getFocusTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFocusing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 9
    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1000(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$000(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$000(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1202(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    .line 23
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$200(Lcom/android/camera/module/loader/camera2/FocusManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$300(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$400(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1300(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 27
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$000(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1400(Lcom/android/camera/module/loader/camera2/FocusManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 31
    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1500(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result p1

    goto :goto_1

    .line 32
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isAeSuccess()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 33
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$000(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    goto :goto_1

    .line 35
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$000(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    .line 37
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    .line 38
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1602(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    goto :goto_2

    .line 41
    :cond_8
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1700(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    :goto_2
    return-void

    .line 42
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void

    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusTask;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager$2;->accept(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method
