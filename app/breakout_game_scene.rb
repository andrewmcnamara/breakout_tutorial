class BreakoutGameScene < SKScene
  def initWithSize(size)

    super
    background = SKSpriteNode.spriteNodeWithImageNamed('bg.png')
    background.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2)

    self.addChild(background)
    #
    self.physicsWorld.gravity = CGVectorMake(0, 0)

    #
    #   1 Create an physics body that borders the screen
    borderBody = SKPhysicsBody.bodyWithEdgeLoopFromRect(self.frame)
    #   2 Set physicsBody of scene to borderBody
    self.physicsBody = borderBody
    #   3 Set the friction of that physicsBody to 0
    self.physicsBody.friction = 0.0
    #
    #  // 1
    ball = SKSpriteNode.spriteNodeWithImageNamed('ball.png')
    #  ball.name = ballCategoryName;
    ball.position = CGPointMake(self.frame.size.width/3, self.frame.size.height/3)
    self.addChild(ball)
    #
    #  // 2
    ball.physicsBody = SKPhysicsBody.bodyWithCircleOfRadius(ball.frame.size.width/2)
    #  // 3
    ball.physicsBody.friction = 0.0
    #  // 4
    ball.physicsBody.restitution = 1.0
    #  // 5
    ball.physicsBody.linearDamping = 0.0
    #  // 6
    ball.physicsBody.allowsRotation = false
    #
    ball.physicsBody.applyImpulse(CGVectorMake(10.0, -10.0))
    #
      paddle = SKSpriteNode.alloc.initWithImageNamed("paddle.png")
      #paddle.name = paddleCategoryName
      paddle.position = CGPointMake(CGRectGetMidX(self.frame), paddle.frame.size.height * 0.6)
      self.addChild(paddle)
      paddle.physicsBody = SKPhysicsBody.bodyWithRectangleOfSize(paddle.frame.size)
      paddle.physicsBody.restitution = 0.1
      paddle.physicsBody.friction = 0.4
      # make physicsBody static
      paddle.physicsBody.dynamic = false
    #
    #  CGRect bottomRect = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, 1);
    #  SKNode* bottom = [SKNode node];
    #  bottom.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect: bottomRect];
    #  [self addChild : bottom];
    #
    #  bottom.physicsBody.categoryBitMask = bottomCategory;
    #  ball.physicsBody.categoryBitMask = ballCategory;
    #  paddle.physicsBody.categoryBitMask = paddleCategory;
    #
    #  ball.physicsBody.contactTestBitMask = bottomCategory | blockCategory;
    #
    #  self.physicsWorld.contactDelegate = self;
    #
    #  // 1 Store some useful variables
    #  int numberOfBlocks = 3;
    #  int blockWidth = [SKSpriteNode spriteNodeWithImageNamed: @ "block.png"].size.width;
    #  float padding = 20.0 f;
    #  // 2 Calculate the xOffset
    #  float xOffset = (self.frame.size.width - (blockWidth * numberOfBlocks + padding * (numberOfBlocks-1))) / 2;
    #  // 3 Create the blocks and add them to the scene
    #  for (int i = 1;
    #    i <= numberOfBlocks; i++) {
    #        SKSpriteNode* block = [SKSpriteNode spriteNodeWithImageNamed: @ "block.png"];
    #    block.position = CGPointMake((i-0.5 f)*block.frame.size.width + (i-1)*padding + xOffset, self.frame.size.height * 0.8 f);
    #    block.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize: block.frame.size];
    #    block.physicsBody.allowsRotation = NO;
    #    block.physicsBody.friction = 0.0 f;
    #    block.name = blockCategoryName;
    #    block.physicsBody.categoryBitMask = blockCategory;
    #    [self addChild : block];
    #  end
    self
  end
end

