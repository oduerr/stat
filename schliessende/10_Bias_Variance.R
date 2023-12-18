library(ggplot2)

# Define the true parameter value and the estimator's parameters
true_parameter <- 5
estimator_mean <- 8
estimator_sd <- 1

# Create a sequence of x values
x <- seq(0, 10, length.out = 1000)

# Create the density of the estimator's distribution
estimator_density <- dnorm(x, mean = estimator_mean, sd = estimator_sd)

# Create a data frame for plotting
df <- data.frame(x, estimator_density)

# Plotting
ggplot(df, aes(x, estimator_density)) +
  geom_line(color = "orange",size = 1.2) +
  geom_vline(xintercept = true_parameter, color = "blue", linetype = "solid", size = 1.2) +
  geom_vline(xintercept = estimator_mean, color = "red", linetype = "dashed", size = 1.2) +
  annotate("text", x = (true_parameter + estimator_mean) / 2, y = -0.01, 
           label = "Bias = E[T] - θ", color = "green") +
  annotate("text", x = true_parameter - 0.2, y = -0.01, label = "θ", color = 'blue', size=10) +
  annotate("text", x = estimator_mean + 0.6, y = -0.01, label = "E(T)", color = 'red', size=10) +
  theme_minimal() +
  labs(title = "Visualization des Bias eines Schätzers",
       x = "",
       y = "Density") +
  theme(plot.title = element_text(hjust = 0.5))

# Display the plot
ggsave("estimator_bias_visualization.png", width = 12, height = 6, dpi = 300)
