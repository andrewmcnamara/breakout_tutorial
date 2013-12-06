class GameViewController < UIViewController
  def viewWillLayoutSubviews
    super.viewWillLayoutSubviews

    # Configure the view.
    skView = self.view
    if !skView.scene

      skView.showsFPS = true
      skView.showsNodeCount = true

      # Create and configure the scene.
      scene = BreakoutGameScene.sceneWithSize(skView.bounds.size)
      scene.scaleMode = SKSceneScaleModeAspectFill

      # Present the scene.
      skView.presentScene scene
    end
  end


end