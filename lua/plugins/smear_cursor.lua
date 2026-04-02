return {
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    opts = {
      -- Faster / snappier defaults (tweak to taste)
      stiffness = 0.9,
      trailing_stiffness = 0.6,
      stiffness_insert_mode = 0.7,
      trailing_stiffness_insert_mode = 0.7,
      damping = 0.95,
      damping_insert_mode = 0.95,
      distance_stop_animating = 0.5,
      -- Lower the draw interval for a smoother, faster feel (ms)
      time_interval = 4,
      -- Disable particles by default for better performance
      particles_enabled = false,
    },
  },
}
