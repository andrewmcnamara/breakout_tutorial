class GameViewController < UIViewController
  def loadView
    bounds = UIScreen.mainScreen.bounds
    self.view = SKView.alloc.initWithFrame(bounds)
  end

  def viewWillLayoutSubviews
     super

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