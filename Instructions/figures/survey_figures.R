
library(ggplot2)

dir <- "/Users/sebastianredl/Dropbox (Harvard University)/Attenuation/Instructions/figures/"


#################################################################################
#################################CMA######################################
#################################################################################



# Create a dataframe with gallons of milk ranging from 0 to 100
data <- data.frame(gallons_of_milk = 0:1000/10)

# Calculate happiness (square root of gallons of milk)
data$happiness <- sqrt(data$gallons_of_milk)

# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = gallons_of_milk, y = happiness)) +
  geom_line(color = "blue", linewidth=2) +  # Change line color to blue
  labs(x = "Bottles of milk", y = "Happiness from milk") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 100), y = c(0, 10)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
         axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"CMA_milk.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch


# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = gallons_of_milk, y = happiness)) +
  geom_line(color = "orange", linewidth=2) +  # Change line color to blue
  labs(x = "Bottles of juice", y = "Happiness from juice") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 100), y = c(0, 10)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"CMA_juice.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch



#################################################################################
#################################PRO######################################
#################################################################################



# Create a dataframe with gallons of milk ranging from 0 to 100
data <- data.frame(gallons_of_milk = 0:1000/10)

# Calculate happiness (square root of gallons of milk)
data$healthiness <- 5/9*data$gallons_of_milk * (200 -data$gallons_of_milk)

# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = gallons_of_milk, y = healthiness)) +
  geom_line(color = "blue", linewidth=2) +  # Change line color to blue
  labs(x = "Gallons of healthy drink consumed", y = "Health") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 100), y = c(0, 6000)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"PRO_health.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch


# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = gallons_of_milk, y = happiness)) +
  geom_line(color = "orange", linewidth=2) +  # Change line color to blue
  labs(x = "Gallons of juice", y = "Happiness from juice") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 100), y = c(0, 25)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"CMA_juice.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch






#################################################################################
#################################PRO######################################
#################################################################################



# Create a dataframe with gallons of milk ranging from 0 to 100
data <- data.frame(distance = 0:1000/10)

# Calculate happiness (square root of gallons of milk)
data$bonus <- 10 - 0.004 * data$distance * data$distance

# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = distance, y = bonus)) +
  geom_line(color = "blue", linewidth=2) +  # Change line color to blue
  labs(x = "Distance between guess and secret number", y = "Your bonus in $") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 50), y = c(0, 10.5)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"CHT_self_bonus.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch




# Create a dataframe with gallons of milk ranging from 0 to 100
data <- data.frame(distance = 0:1000/10)

# Calculate happiness (square root of gallons of milk)
data$bonus <- 10 - 0.004*(100 - data$distance)^2

# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = distance, y = bonus)) +
  geom_line(color = "blue", linewidth=2) +  # Change line color to blue
  labs(x = "Your guesss", y = "Other participant's bonus in $") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 50), y = c(0, 10.5)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"CHT_other_bonus.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch



#################################################################################
#################################MUL######################################
#################################################################################
# 
# ### PILOT S4 Task 1
# 
# 
# 
# data <- data.frame(B = seq(0, 60, by = 1),
#                    score = ((seq(0, 60, by = 1))^2))
# 
# # Create the ggplot with slightly increased margin for the title
# gg<-ggplot(data, aes(x = B, y = score)) +
#   geom_line(color = "red", size = 1) +  # Line plot with blue color and size 1
#   #labs(x = bquote(alpha ~ "pounds of sand in Bucket A"), y = 'Points from Bucket B') +  # Labels for x and y axes
#   labs(x = bquote("Liters of soda S produced"), y = 'Total cost of producing soda') +  # Labels for x and y axes
#   theme_minimal() +  # Apply a minimal theme
#   theme(
#     # plot.title = element_text(size = 16, hjust = 0.5), # Set title font size to 16
#     axis.title.x = element_text(size = 16), # Set X-axis label font size to 14
#     axis.title.y = element_text(size = 16),  # Set Y-axis label font size to 14
#     axis.line = element_line(color = "black"),
#     panel.grid.major = element_blank(),
#     panel.grid.minor = element_blank(),
#     plot.margin = margin(10, 10, 10, 10, "pt")) +
#   #  ggtitle("Prize money for Horse A") +  # Set the centered title
#   scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2))  +  # Set x-axis to start at 0
#   scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100))    # Set y-axis to start at 0
# 
# gg
# ggsave(paste(path_,"Pilot_4_T1_C.png"), gg, width = 6, height = 4, units = "in")


### PILOT S4 Task 2



# Create a data frame with values of B and corresponding costs
data <- data.frame(B = seq(0, 135, by = 1),
                   score = (seq(0, 135, by = 1) * (270 - seq(0, 135, by = 1))))

# Create the ggplot with slightly increased margin for the title
gg<-ggplot(data, aes(x = B, y = score)) +
  geom_line(color = rgb(112/255, 4/255, 112/255), size = 1) +  # Line plot with blue color and size 1
  #labs(x = bquote(alpha ~ "gallons of water in Container A"), y = 'Points from Container A') +  # Labels for x and y axes
  labs(x = bquote("Hours of practicing with Horse A"), y = 'Prize money for Horse A') +  # Labels for x and y axes
  theme_minimal() +  # Apply a minimal theme
  theme(
    # plot.title = element_text(size = 16, hjust = 0.5), # Set title font size to 16
    axis.title.x = element_text(size = 16), # Set X-axis label font size to 14
    axis.title.y = element_text(size = 16),  # Set Y-axis label font size to 14
    axis.line = element_line(color = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.margin = margin(10, 10, 10, 10, "pt")) +
  #  ggtitle("Prize money for Horse A") +  # Set the centered title
  scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2))  +  # Set x-axis to start at 0
  scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100))    # Set y-axis to start at 0

gg
ggsave(paste0(dir,"MUL_Horse_A.png"), gg, width = 6, height = 4, units = "in")


# Create a data frame with values of B and corresponding costs
data <- data.frame(B = seq(0, 135, by = 1),
                   score = (135*135 - (135 - seq(0, 135, by = 1))^2))

# Create the ggplot with slightly increased margin for the title
gg<-ggplot(data, aes(x = B, y = score)) +
  geom_line(color = rgb(10/255, 154/255, 176/255), size = 1)+  # Line plot with blue color and size 1
  #labs(x = bquote(alpha ~ "gallons of water in Container A"), y = 'Points from Container B') +  # Labels for x and y axes
  labs(x = bquote("Hours of practicing with Horse B"), y = 'Prize money for Horse B') +  # Labels for x and y axes
  theme_minimal() +  # Apply a minimal theme
  theme(
    # plot.title = element_text(size = 16, hjust = 0.5), # Set title font size to 16
    axis.title.x = element_text(size = 16), # Set X-axis label font size to 14
    axis.title.y = element_text(size = 16),  # Set Y-axis label font size to 14
    axis.line = element_line(color = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.margin = margin(10, 10, 10, 10, "pt")) +
  #  ggtitle("Prize money for Horse A") +  # Set the centered title
  scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2))  +  # Set x-axis to start at 0
  scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100))    # Set y-axis to start at 0
gg
ggsave(paste0(dir,"MUL_Horse_B.png"), gg, width = 6, height = 4, units = "in")





# 
# data <- data.frame(B = seq(0, 60, by = 1),
#                    score = ((seq(0, 60, by = 1))^2))
# 
# # Create the ggplot with slightly increased margin for the title
# gg<-ggplot(data, aes(x = B, y = score)) +
#   geom_line(color = "red", size = 1) +  # Line plot with blue color and size 1
#   #labs(x = bquote(alpha ~ "pounds of sand in Bucket A"), y = 'Points from Bucket B') +  # Labels for x and y axes
#   labs(x = bquote("Number of widgets W produced"), y = 'Total cost of producing widgets') +  # Labels for x and y axes
#   theme_minimal() +  # Apply a minimal theme
#   theme(plot.title = element_text(hjust = 0.5), 
#         axis.line = element_line(color = "black"),
#         panel.grid.major = element_blank(),  # Remove major gridlines
#         panel.grid.minor = element_blank(),
#         plot.margin = margin(10, 10, 10, 10, "pt"), # Increase the margin slightly
#         axis.ticks = element_line(color = "black")) + 
#   ggtitle("Total cost of producing widgets") +  # Set the centered title
#   scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2), breaks = seq(0, max(data$B) + 2, by = 5)) +
#   scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100), breaks = seq(0, max(data$score) + 100, by = 500))
# 
# gg
# ggsave(paste(path_,"Pilot_3_T1_C.png"), gg, width = 6, height = 4, units = "in")
# 



# no title 


# data <- data.frame(B = seq(0, 60, by = 1),
#                    score = ((seq(0, 60, by = 1))^2))
# 
# # Create the ggplot with slightly increased margin for the title
# gg<-ggplot(data, aes(x = B, y = score)) +
#   geom_line(color = "red", size = 1) +  # Line plot with blue color and size 1
#   #labs(x = bquote(alpha ~ "pounds of sand in Bucket A"), y = 'Points from Bucket B') +  # Labels for x and y axes
#   labs(x = bquote("Liters of soda S produced"), y = 'Total cost of producing soda') +  # Labels for x and y axes
#   theme_minimal() +  # Apply a minimal theme
#   theme(
#     #plot.title = element_text(hjust = 0.5), 
#     axis.line = element_line(color = "black"),
#     panel.grid.major = element_blank(),  # Remove major gridlines
#     panel.grid.minor = element_blank(),
#     plot.margin = margin(10, 10, 10, 10, "pt"), # Increase the margin slightly
#     axis.ticks = element_line(color = "black")) + 
#   #ggtitle("Total cost of producing soda") +  # Set the centered title
#   scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2), breaks = seq(0, max(data$B) + 2, by = 5)) +
#   scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100), breaks = seq(0, max(data$score) + 100, by = 500))
# 
# gg
# ggsave(paste(path_,"Pilot_4_T1_C_no_tit.png"), gg, width = 6, height = 4, units = "in")
# 


# Create a data frame with values of B and corresponding costs
data <- data.frame(B = seq(0, 135, by = 1),
                   score = (seq(0, 135, by = 1) *(270 - seq(0, 135, by = 1))))

# Create the ggplot with slightly increased margin for the title
gg<-ggplot(data, aes(x = B, y = score)) +
  geom_line(color = rgb(112/255, 4/255, 112/255), size = 1) +  # Line plot with blue color and size 1
  #labs(x = bquote(alpha ~ "gallons of water in Container A"), y = 'Points from Container A') +  # Labels for x and y axes
  labs(x = bquote("Hours of practicing with Horse A"), y = 'Prize money for Horse A') +  # Labels for x and y axes
  theme_minimal() +  # Apply a minimal theme
  theme(
    #plot.title = element_text(hjust = 0.5), 
    axis.line = element_line(color = "black"),
    panel.grid.major = element_blank(),  # Remove major gridlines
    panel.grid.minor = element_blank(),
    plot.margin = margin(10, 10, 10, 10, "pt"),
    axis.ticks = element_line(color = "black")) +  # Increase the margin slightly
  # ggtitle("Prize money for Horse A") +  # Set the centered title
  scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2), breaks = seq(0, max(data$B) + 2, by = 15)) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100), breaks = seq(0, max(data$score) + 100, by = 2000))

gg

ggsave(paste0(dir,"MUL_Horse_A.png"), gg, width = 6, height = 4, units = "in")

# Create a data frame with values of B and corresponding costs
data <- data.frame(B = seq(0, 135, by = 1),
                   score = (135*135 - (135 - seq(0, 135, by = 1))^2))

# Create the ggplot with slightly increased margin for the title
gg<-ggplot(data, aes(x = B, y = score)) +
  geom_line(color = rgb(10/255, 154/255, 176/255), size = 1)+  # Line plot with blue color and size 1
  #labs(x = bquote(alpha ~ "gallons of water in Container A"), y = 'Points from Container B') +  # Labels for x and y axes
  labs(x = bquote("Hours of practicing with Horse B"), y = 'Prize money for Horse B') +  # Labels for x and y axes
  theme_minimal() +  # Apply a minimal theme
  theme(
    #plot.title = element_text(hjust = 0.5), 
    axis.line = element_line(color = "black"),
    panel.grid.major = element_blank(),  # Remove major gridlines
    panel.grid.minor = element_blank(),
    plot.margin = margin(10, 10, 10, 10, "pt"),
    axis.ticks = element_line(color = "black")) +  # Increase the margin slightly
  # ggtitle("Prize money for Horse B") +  # Set the centered title
  scale_x_continuous(expand = c(0, 0), limits = c(0, max(data$B) + 2), breaks = seq(0, max(data$B) + 2, by = 15)) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, max(data$score) + 100), breaks = seq(0, max(data$score) + 100, by = 2000))
gg
ggsave(paste0(dir,"MUL_Horse_B.png"), gg, width = 6, height = 4, units = "in")



# Step 1: Load the CSV file
data <- read.csv("/Users/sebastianredl/Dropbox (Harvard University)/Organizational_Files_BE_SR/coding_challenge/data.csv")


  data[is.na(data)] <- 0
  View(data)
  
data <- data %>% 
  mutate(EV_a = x_a_1 * p_a_1 + x_a_2 * p_a_2 + x_a_3 * p_a_3 + x_a_4 * p_a_4 + x_a_5 * p_a_5 + x_a_6 * p_a_6 + x_a_7 * p_a_7) %>% 
  mutate(EV_b = x_b_1 * p_b_1 + x_b_2 * p_b_2 + x_b_3 * p_b_3 + x_b_4 * p_b_4 + x_b_5 * p_b_5 + x_b_6 * p_b_6 + x_b_7 * p_b_7) %>% 
  mutate(EV_prox = EV_a - EV_b) %>% 
  mutate(frac_a = (num_chose_a/(num_chose_a + num_chose_b))) %>% 
  mutate(high_complex = median(oac) < oac)

model <- lm(frac_a ~ EV_prox, data = data)

summary(model)

# Print the regression summary
summary(model)



# Plot with linear regression lines for each level of high_complex
ggplot(data, aes(x = EV_prox, y = frac_a, color = high_complex)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "EV_prox", y = "frac_a", color = "high_complex") +
  ggtitle("Scatter Plot of frac_a on EV_prox with regression fit")


#################################################################################
#################################PRS######################################
#################################################################################



# Create a dataframe with gallons of milk ranging from 0 to 100
data <- data.frame(gallons_of_milk = 0:1000/10)

# Calculate happiness (square root of gallons of milk)
data$happiness <- sqrt(data$gallons_of_milk)

# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = gallons_of_milk, y = happiness)) +
  geom_line(color = "blue", linewidth=2) +  
  labs(x = "Barrels of water", y = "Crop yield in a given season") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 100), y = c(0, 10)) + 
  geom_hline(yintercept = 0) +  
  geom_vline(xintercept = 0) +  
  theme_minimal() + 
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  




g
ggsave(paste0(dir,"PRS.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch


# Create a line plot with blue axes lines and larger axis labeling
g <- ggplot(data, aes(x = gallons_of_milk, y = happiness)) +
  geom_line(color = "orange", linewidth=2) +  # Change line color to blue
  labs(x = "Gallons of juice", y = "Happiness from juice") +  
  scale_x_continuous(expand = c(0, 0)) +  
  scale_y_continuous(expand = c(0, 0)) +  
  coord_cartesian(x = c(0, 100), y = c(0, 25)) + 
  geom_hline(yintercept = 0) +  # Change axes line color to blue
  geom_vline(xintercept = 0) +  # Change axes line color to blue
  theme_minimal() + 
  theme(panel.grid.major = element_blank(),  # Remove gridlines
        panel.grid.minor = element_blank(),
        axis.text = element_text(size = 20),  # Increase axis text size
        axis.title = element_text(size = 24),
        axis.ticks = element_line(),
        plot.margin = margin(1, 1, 0.1, 0.1, "cm"))  # Increase axis title size

g
ggsave(paste0(dir,"CMA_juice.png"),
       g,# File name
       width = 10,  # Width in inches
       height = 6,  # Height in inches
       dpi = 300)   # Resolution in dots per inch



# Create a vector containing the years from 2015 to 2023
years <- 2015:2023

# Initialize an empty list to store the counts
file_counts <- list()

# Loop through each year
for (year in years) {
  # Get the directory path for the current year
  dir_path <- paste0("/Users/sebastianredl/Downloads/experimental economics/instructions/", year)
  
  # Get the list of files in the directory
  files <- list.files(dir_path)
  
  # Initialize a counter for files with differing first 10 characters
  differing_first_10_count <- 0
  
  # Loop through each file in the directory
  unique_files <-c()
  for (file in files) {
    # Read the first 10 characters of the file name
    first_10_chars <- substr(file, 1, 30)
    unique_files <- c(unique_files, first_10_chars)
  }
  print(year)
  print(unique_files)
  unique_files <- unique(unique_files)
    # Check if the first 10 characters differ

      differing_first_10_count <- length(unique_files) + 1

  
  
  # Store the count in the list
  file_counts[[as.character(year)]] <- differing_first_10_count
}

# Print the total count of files with differing first 10 characters in each year
for (year in years) {
  cat("Year:", year, "| Total files with differing first 10 characters:", file_counts[[as.character(year)]], "\n")
}

# Calculate and print the overall total count of files with differing first 10 characters
total_differing_first_10_count <- sum(unlist(file_counts))
cat("Overall total files with differing first 10 characters:", total_differing_first_10_count)


tmp <- read.csv("/Users/sebastianredl/Downloads/experimental economics/record_page_edited.csv")
tmp %>% 
  mutate(dummy = year >= 2015) %>% 
  group_by(dummy) %>% 
  summarise(count = sum(downloaded))


options(encoding = "")
tmp_ra <- read.csv("/Users/sebastianredl/Dropbox (Harvard University)/Text/Complexity_experiments/Instructions/RA/experimental economics/record_page_edited_RA.csv")
options(encoding = "UTF-8")
tmp_me <- read.csv("/Users/sebastianredl/Documents/Experimental_Complexity/data/web/experimental economics/record_page_edited_utf8.csv",
                   encoding="UTF-8")
names(tmp_ra)
tmp_ra <- tmp_ra %>% 
  select(article_link, extractable, downloaded, Rating)

tmp_me <- tmp_me %>% select(
 -downloaded, -extractable, 
)

tmp_ra <- tmp_ra %>% 
  left_join(., tmp_me, by = "article_link")

write.csv(tmp_ra, "/Users/sebastianredl/Dropbox (Harvard University)/Text/Complexity_experiments/Instructions/RA/experimental economics/record_page_edited_baiyun.csv",fileEncoding = "UTF-8")


# Specify the path to the directory
directory_path <- "/Users/sebastianredl/Dropbox (Harvard University)/Attenuation/Instructions/figures/REC"

# Get all names of files and directories within the directory
directory_contents <- list.files(directory_path)



company_names <- c("LionBloom Technologies","PandaPetal Cosmetics", "FalconFlight Aviation", "TigerThrive Fitness", "ElephantRoot Consulting", "RavenLeaf Apparel", "DolphinWave Aquatics", "ButterflyBloom Education", "WolfWeave Textiles", "OwlSage Publishing", "GiraffeGrove Renewable Energy", "FoxFern Fashion", "HawkHaven Real Estate")
company_names_shot <- c("LionBloom","PandaPetal", "FalconFlight", "TigerThrive", "ElephantRoot", "RavenLeaf", "DolphinWave", "ButterflyBloom", "WolfWeave", "OwlSage", "GiraffeGrove Renewable", "FoxFern", "HawkHaven Real")
filenames <- sub("\\.png", "", directory_contents)
filenames

# Read CSV file into a data frame
data <- read.csv("/Users/sebastianredl/Dropbox (Harvard University)/Attenuation/Instructions/html/REC.csv")

printing <- function(data_col){
  joined_string <- paste0('["', paste(data_col, collapse = '","'), '"]')
  print(joined_string)
}

printing(data$id)
printing(data$name)


# FOR 

increment <-50
sigma<- 17
mu1<- 10 
mu2 <- 50
step <- 5



pnorm(10, mean = mu1, sd = sigma)

data_stock1 <- data.frame(
  stock = seq(from = mu1 -increment, to =mu1 +increment , by=step)
)

data_stock1 <- data_stock1 %>% 
  mutate(chance = pnorm(stock + step/2, mean = mu1, sd = sigma) - pnorm(stock -step/2, mean = mu1, sd = sigma)
         ) %>% 
  mutate(chance = chance + 2*pnorm(min(stock), mean = mu1, sd = sigma)/nrow(data_stock1)) %>% 
  mutate(level = "low")

data_stock2 <- data.frame(
  stock = seq(from = mu2 -increment, to =mu2 +increment , by=step)
)

data_stock2 <- data_stock2 %>% 
  mutate(chance = pnorm(stock + step/2, mean = mu2, sd = sigma) - pnorm(stock -step/2, mean = mu2, sd = sigma)
  ) %>% 
  mutate(chance = chance + 2*pnorm(min(stock), mean = mu2, sd = sigma)/nrow(data_stock2))%>% 
  mutate(level = "high")

data_stock <- rbind(data_stock1, data_stock2)

stocks <- unique(data_stock$stock)
stocks1 <- unique(data_stock1$stock)
stocks2 <- unique(data_stock2$stock)

stocks1_not <- stocks[!stocks %in% stocks1]
stocks2_not <- stocks[!stocks %in% stocks2]

stocks1_extension <- data.frame(
  stock = stocks1_not,
  chance = 0,
  level = "low"
)

stocks2_extension <- data.frame(
  stock = stocks2_not,
  chance = 0,
  level = "high"
)

data_stock<- rbind(data_stock, stocks1_extension, stocks2_extension) %>% 
  mutate(chance = chance*100)


gg <- ggplot(data_stock, aes(x = factor(stock), y = chance, fill = level)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +
  scale_fill_manual(values = c("#097969", "#FF5733"), labels = c("Good Firms", "Bad Firms")) +  # Set fill colors and labels
  labs(x = "Possible growth of stock price in ($)", y = "Likelihood (%)") +  # Change axis labels
  scale_x_discrete(breaks = seq(min(stocks), max(stocks), by = 10), labels = seq(min(stocks), max(stocks), by = 10)) +  # Adjust x-axis ticks and labels
  coord_cartesian(ylim = c(0, max(data_stock$chance) + 0.3), expand = FALSE) +  # Set origin at (0,0)
  theme(
    panel.grid.major = element_blank(),  # Remove major gridlines
    panel.grid.minor = element_blank(),  # Remove minor gridlines
    axis.line = element_line(color = "black"),  # Ensure axis lines are visible
    axis.ticks.length = unit(0.25, "cm"),  # Set the length of the ticks
    legend.title = element_blank(),
    panel.background = element_rect(fill = "white", colour="white")  # Set background color to white
  )

gg



gg
ggsave(paste0(dir,"FOR.png"), plot = gg, width = 8, height = 4, units = "in")





 c#





#["IM_6mNjL68nTkn30tu","IM_62xm7Qfmi5QTMua","IM_I1AnOLFqwpxMsUc","IM_iKuwugjPImtSxI3","IM_3uJLaZojlWDtAIJ","IM_j3FBa8qL3HHXOBu","IM_56Iks5n9liH1Jo7","IM_C6EyeESDpy9mKkF","IM_0Grj9A9RMuMUdCt","IM_mUM56RsziSBk0VL","IM_V7AwEpLnQaqWF5a","IM_twYiS6KIIDyQceN","IM_UINcDcJohTsQvJB"]
#["ButterflyBloom Education","DolphinWave Aquatics","ElephantRoot Consulting","FalconFlight Aviation","FoxFern Fashion","GiraffeGrove Renewable Energy","HawkHaven Real Estate","LionBloom Technologies","OwlSage Publishing","PandaPetal Cosmetics","RavenLeaf Apparel","TigerThrive Fitness","WolfWeave Textiles"]"
#["ButterflyBloom_Education","DolphinWave_Aquatics","ElephantRoot_Consulting","FalconFlight_Aviation","FoxFern_Fashion","GiraffeGrove_Renewable_Energy","HawkHaven_Real_Estate","LionBloom_Technologies","OwlSage_Publishing","PandaPetal_Cosmetics","RavenLeaf_Apparel","TigerThrive_Fitness","WolfWeave_Textiles"]

 ["RSPG","RSPT","RSPH","RSPS","RSPU","RSPN","RSPM","RSPD","RSPR","RSPF","IBB","SOXQ","PPA"]



["energy sector (Ticker: RSPG)","technology sector (Ticker: RSPT)","health care sector (Ticker: RSPH)","consumer staples sector (Ticker: RSPS)","utilities sector (Ticker: RSPU)","industrials sector (Ticker: RSPN)","materials sector (Ticker: RSPM)","consumer discretionary sector (Ticker: RSPD)","real estate sector (Ticker: RSPR)","financial sector (Ticker: RSPF)","biotechnology sector (Ticker: IBB)","semiconductor sector (Ticker: SOXQ)","aerospace and defense sector (Ticker: PPA)"]


 
 
 

 

 
 a <- 400
 t<-300
 py<-7.5
 
 # Create a dataframe with x values
 df <- data.frame(px = seq(1, 10, by = 0.1))
 
 # Define a vector of different values for c
 c_values <- c(1)
 
 # Create a list to store ggplot objects
 plots <- list()
 
 # Loop through each value of c and create a ggplot object
 for (c in c_values) {
   # Calculate y values for the function c*x

   df[[paste0("c", c)]] <-  (a/(2*c)) - (t/(2*c*py))*df$px
   

 }
 
 df[[paste0("c", 10)]] <- 1000/df$px
 
budget 100 
optimal 90 .. 1 -> max 200
optimal 100 .. 0.5 -> max 200


 
 # Reshape the data from wide to long format for ggplot
 df_long <- reshape2::melt(df, id.vars = "px", variable.name = "c", value.name = "y")
 
 # Plot all lines in a single plot
 ggplot(df_long, aes(x = px, y = y, color = c)) +
   geom_line() +
   labs(title = paste0("Plot of utility ",a,"*x - cx*x + ",t,"y"," by different c"),
        x = "px",
        y = paste0("(",a,"/(2*c)) - (",t,"/(2*c*",py,"))*px)")) +
   theme_minimal() +
   scale_y_continuous(limits = c(0, 250))
  
 c<-1
 
  print(paste0("Plot of utility ",a,"*x - ",c,"x*x + ",t,"y",""))
  
  
  pjuice<-2
df <- data.frame(pmilk = seq(1, 3, by = 0.1))
df$milk <- 100*pjuice/(df$pmilk*pjuice + df$pmilk*df$pmilk)
df$line <- "optimal"


df_max <- data.frame(pmilk = seq(1, 10, by = 0.1))
df_max$milk <- 100/df_max$pmilk

df_max$line <- "max_possible"

df<-rbind(df, df_max)

ggplot(df, aes(x = pmilk, y = milk, color =line)) +
  geom_line()





# Create a dataframe with x values
df <- data.frame()

# Define a vector of different values for c
pjuice <- 2
alphas <- seq(0.1, 1, by=  0.1 )

# Loop through each value of c and create a ggplot object
for (alpha in alphas) {
  df_tmp <- data.frame(pmilk = seq(0.7, 4, by = 0.1))
  df_max <- data.frame(pmilk = seq(0.7, 4, by = 0.1))
  df_tmp$alpha <- alpha
  df_max$alpha <- alpha
  
  df_tmp$milk <- 100 * pjuice * alpha * alpha/ (alpha * alpha * df_tmp$pmilk * pjuice + df_tmp$pmilk * df_tmp$pmilk)
  df_tmp$line <- "optimal"
  df_max$milk <- 100 / df_max$pmilk
  df_max$line <- "max_possible"
  
  df <- rbind(df, rbind(df_tmp, df_max))
}

# Plot all lines in a single plot
ggplot(df, aes(x = pmilk, y = milk, color = as.factor(alpha), linetype = line)) +
  geom_line() +
  labs(title = "Plot of Milk Production",
       x = "pmilk",
       y = "milk") +
  theme_minimal()



# Create a dataframe with x values
df <- data.frame()

# Define a vector of different values for c
pjuice <- 2
alphas <- seq(0.1, 1, by=  0.1 )

# Loop through each value of c and create a ggplot object
# for (alpha in alphas) {
#   df_tmp <- data.frame(pmilk = seq(0.7, 4, by = 0.1))
#   df_max <- data.frame(pmilk = seq(0.7, 4, by = 0.1))
#   df_tmp$alpha <- toString(alpha)
#   df_max$alpha <-  toString(alpha)
#   
#   df_tmp$milk <- 100 * pjuice * alpha * alpha/ (alpha * alpha * df_tmp$pmilk * pjuice + df_tmp$pmilk * df_tmp$pmilk)
#   df_tmp$line <- "optimal"
#   df_max$milk <- 100 / df_max$pmilk
#   df_max$line <- "max_possible"
#   df <- rbind(df, rbind(df_tmp, df_max))
#   
# }

df_tmp <- data.frame(pmilk = seq(0.7, 5, by = 0.1))
df_max <- data.frame(pmilk = seq(0.7, 5, by = 0.1))
df_tmp$alpha <- "Cobb Douglas"
df_max$alpha <- "Cobb Douglas"

df_tmp$milk <- 100  /df_tmp$pmilk/2
df_tmp$line <- "optimal"
df_max$milk <- 100 / df_max$pmilk
df_max$line <- "max_possible"

df <- rbind(df, rbind(df_tmp, df_max))


# Plot all lines in a single plot
ggplot(df, aes(x = pmilk, y = milk, color = alpha, linetype = line)) +
  geom_line() +
  labs(title = "Plot of Milk Production",
       x = "pmilk",
       y = "milk") +
  theme_minimal() +
  scale_y_continuous(limits = c(0, max(df$milk)))


  
  
  
