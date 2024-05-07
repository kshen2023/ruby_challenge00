# Kang Shen challenge00
# Author: Kang Shen
# Ask the user for the subtotal
puts "Please enter the subtotal:"
sub_total = gets.chomp.to_f


#set GST and PST rates as constants
GST_RATE = 0.05
PST_RATE = 0.07

# Calculate taxes
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE

# Calculate grand total
grand_total = sub_total + gst + pst

# Display output
puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % pst} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{'%.2f' % gst} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Print short message based on grand total
if grand_total <= 5.00
    puts "Pocket Change"
  elsif grand_total < 20
    puts "Wallet Time"
  else
    puts "Charge It!"
  end