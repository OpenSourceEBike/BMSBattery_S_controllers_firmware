import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.io.*;
import java.awt.Desktop;
import java.net.URI;
import java.net.URISyntaxException;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.text.JTextComponent;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.AbstractAction;
import java.awt.event.ActionEvent;
import javax.swing.Action;
import java.awt.event.ActionListener;
import java.awt.GridLayout;
import java.awt.Font;
import java.awt.Color;
import java.io.BufferedWriter; 
import java.io.FileWriter; 
import java.io.IOException; 
import java.io.PrintWriter;
import com.jgoodies.forms.factories.DefaultComponentFactory;
import javax.swing.SwingConstants; 
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.ButtonGroup;

public class ErsterVersuch extends JFrame {

	private JPanel contentPane;
	private JTextField txtPasTimeout;
	private JTextField txtWheelCircumference;
	private JTextField txtNumberOfPas;
	private JLabel lblSpeedLimit;
	private JTextField txtSpeedlimit;
	private JLabel lblSupportFactor;
	private JTextField txtSupportfactor;
	private JLabel lblThrottleMin;
	private JTextField txtThrottlemin;
	private JLabel lblThrottleMax;
	private JTextField txtThrottlemax;
	private JButton lblHttpsopensourceebikefirmwarebitbucketio;
	private JLabel lblOpenSourceFirmware;
	private JButton btnWriteConfiguration;
	private JTextField txtMaxbatterycurrent;
	private JTextField txtUndervoltage;
	private final ButtonGroup Ridingmode = new ButtonGroup();
	
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ErsterVersuch frame = new ErsterVersuch();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public ErsterVersuch() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 452, 570);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblTollesProgramm = new JLabel("OSEC Parameter Configurator");
		lblTollesProgramm.setForeground(Color.BLUE);
		lblTollesProgramm.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblTollesProgramm.setBounds(5, 16, 255, 34);
		contentPane.add(lblTollesProgramm);
		
		JLabel lblPasTimeout = new JLabel("PAS Timeout");
		lblPasTimeout.setBounds(5, 167, 101, 14);
		contentPane.add(lblPasTimeout);
		
		txtPasTimeout = new JTextField();
		txtPasTimeout.setText("3125");
		txtPasTimeout.setBounds(150, 165, 86, 20);
		contentPane.add(txtPasTimeout);
		txtPasTimeout.setColumns(10);
		
		JLabel lblWheelCircumference = new JLabel("Wheel circumference");
		lblWheelCircumference.setBounds(5, 130, 131, 14);
		contentPane.add(lblWheelCircumference);
		
		txtWheelCircumference = new JTextField();
		txtWheelCircumference.setText("2000");
		txtWheelCircumference.setBounds(150, 128, 86, 20);
		contentPane.add(txtWheelCircumference);
		txtWheelCircumference.setColumns(10);
		
		JLabel lblNumberOfPas = new JLabel("Number of PAS Magnets");
		lblNumberOfPas.setBounds(5, 92, 141, 14);
		contentPane.add(lblNumberOfPas);
		
		txtNumberOfPas = new JTextField();
		txtNumberOfPas.setText("16");
		txtNumberOfPas.setBounds(150, 87, 86, 20);
		contentPane.add(txtNumberOfPas);
		txtNumberOfPas.setColumns(10);
		
		lblSpeedLimit = new JLabel("Speed Limit (km/h)");
		lblSpeedLimit.setBounds(5, 209, 135, 14);
		contentPane.add(lblSpeedLimit);
		
		txtSpeedlimit = new JTextField();
		txtSpeedlimit.setText("25");
		txtSpeedlimit.setBounds(150, 207, 86, 20);
		contentPane.add(txtSpeedlimit);
		txtSpeedlimit.setColumns(10);
		
		lblSupportFactor = new JLabel("Assist factor");
		lblSupportFactor.setBounds(5, 248, 101, 14);
		contentPane.add(lblSupportFactor);
		
		txtSupportfactor = new JTextField();
		txtSupportfactor.setText("64");
		txtSupportfactor.setBounds(150, 245, 86, 20);
		contentPane.add(txtSupportfactor);
		txtSupportfactor.setColumns(10);
		
		lblThrottleMin = new JLabel("Throttle min");
		lblThrottleMin.setBounds(5, 291, 78, 14);
		contentPane.add(lblThrottleMin);
		
		txtThrottlemin = new JTextField();
		txtThrottlemin.setText("43");
		txtThrottlemin.setBounds(150, 288, 86, 20);
		contentPane.add(txtThrottlemin);
		txtThrottlemin.setColumns(10);
		
		lblThrottleMax = new JLabel("Throttle max");
		lblThrottleMax.setBounds(5, 335, 78, 14);
		contentPane.add(lblThrottleMax);
		
		txtThrottlemax = new JTextField();
		txtThrottlemax.setText("182");
		txtThrottlemax.setBounds(150, 332, 86, 20);
		contentPane.add(txtThrottlemax);
		txtThrottlemax.setColumns(10);
		
		lblHttpsopensourceebikefirmwarebitbucketio = new JButton("https://opensourceebikefirmware.bitbucket.io/");
		lblHttpsopensourceebikefirmwarebitbucketio.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if (Desktop.isDesktopSupported()) {
				      try {
				        try {
							Desktop.getDesktop().browse(new URI("https://opensourceebikefirmware.bitbucket.io/"));
						} catch (URISyntaxException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				      } catch (IOException e) { /* TODO: error handling */ }
				    } else { /* TODO: error handling */ }

			}
		});
		lblHttpsopensourceebikefirmwarebitbucketio.setForeground(Color.BLUE);
		lblHttpsopensourceebikefirmwarebitbucketio.setBounds(65, 476, 309, 29);
		contentPane.add(lblHttpsopensourceebikefirmwarebitbucketio);
		
		lblOpenSourceFirmware = new JLabel("Open Source Firmware for E-Bike Controller");
		lblOpenSourceFirmware.setFont(new Font("Tahoma", Font.PLAIN, 11));
		lblOpenSourceFirmware.setForeground(Color.BLUE);
		lblOpenSourceFirmware.setBounds(5, 47, 255, 14);
		contentPane.add(lblOpenSourceFirmware);
		
		txtMaxbatterycurrent = new JTextField();
		txtMaxbatterycurrent.setText("254");
		txtMaxbatterycurrent.setBounds(150, 371, 86, 20);
		contentPane.add(txtMaxbatterycurrent);
		txtMaxbatterycurrent.setColumns(10);
		
		JLabel lblBatteryCurrentMax = new JLabel("Battery Current max");
		lblBatteryCurrentMax.setBounds(5, 374, 131, 14);
		contentPane.add(lblBatteryCurrentMax);
		
		txtUndervoltage = new JTextField();
		txtUndervoltage.setText("127");
		txtUndervoltage.setBounds(150, 404, 86, 20);
		contentPane.add(txtUndervoltage);
		txtUndervoltage.setColumns(10);
		
		JLabel lblUndervoltageLimit = new JLabel("Undervoltage limit");
		lblUndervoltageLimit.setBounds(5, 407, 121, 14);
		contentPane.add(lblUndervoltageLimit);
		
		JRadioButton rdbtnThrottle = new JRadioButton("Throttle");
		Ridingmode.add(rdbtnThrottle);
		rdbtnThrottle.setBounds(259, 220, 109, 23);
		contentPane.add(rdbtnThrottle);
		
		JRadioButton rdbtnThrottlePas = new JRadioButton("Throttle and PAS");
		Ridingmode.add(rdbtnThrottlePas);
		rdbtnThrottlePas.setBounds(259, 244, 149, 23);
		contentPane.add(rdbtnThrottlePas);
		
		JRadioButton rdbtnTorqueSensor = new JRadioButton("Torquesensor");
		rdbtnTorqueSensor.setSelected(true);
		Ridingmode.add(rdbtnTorqueSensor);
		rdbtnTorqueSensor.setBounds(259, 270, 144, 23);
		contentPane.add(rdbtnTorqueSensor);
		
		JButton btnWriteoptionsbyte = new JButton("Write Option Bytes");
		btnWriteoptionsbyte.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnWriteoptionsbyte.setForeground(Color.BLUE);
		btnWriteoptionsbyte.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				{

				      int n = JOptionPane.showConfirmDialog(  
				                null,
				                "If you run this function with a brand new controller, the original firmware will be erased. This can't be undone. Are you sure?" ,
				                "",
				                JOptionPane.YES_NO_OPTION);
				      
				      if(n == JOptionPane.YES_OPTION)
				      {
				    	  try {
								Process process = Runtime.getRuntime().exec("cmd /c start WriteOptionBytes");
							} catch (IOException e1) {
								txtThrottlemin.setText("Error");
								e1.printStackTrace();
							}
				      }
				      else
				      {
				          JOptionPane.showMessageDialog(null, "Goodbye");
				      }
				      
				  // Saving code here
				}
			}
		});
		btnWriteoptionsbyte.setBounds(259, 94, 167, 51);
		contentPane.add(btnWriteoptionsbyte);
		
		btnWriteConfiguration = new JButton("Write Configuration");
		btnWriteConfiguration.addActionListener(new ActionListener() {
		
			public void actionPerformed(ActionEvent arg0) {
		        PrintWriter pWriter = null; 
		        try { 
		            pWriter = new PrintWriter(new BufferedWriter(new FileWriter("config.h"))); 
		            pWriter.println("/*\r\n" + 
		            		" * config.h\r\n" + 
		            		" *\r\n" + 
		            		" *  Automatically created by OSEC Parameter Configurator\r\n" + 
		            		" *  Author: stancecoke\r\n" + 
		            		" */\r\n" + 
		            		"\r\n" + 
		            		"#ifndef CONFIG_H_\r\n" + 
		            		"#define CONFIG_H_\r\n"); 
		            String text_to_save = "#define limit " + txtSpeedlimit.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define timeout " + txtPasTimeout.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define wheel_circumference " + txtWheelCircumference.getText()+"L";
		            pWriter.println(text_to_save); 
		            text_to_save = "#define fummelfaktor " + txtSupportfactor.getText()+"L";
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ADC_THROTTLE_MIN_VALUE " + txtThrottlemin.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ADC_THROTTLE_MAX_VALUE " + txtThrottlemax.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define BATTERY_VOLTAGE_MIN_VALUE " + txtUndervoltage.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define BATTERY_CURRENT_MAX_VALUE " + txtMaxbatterycurrent.getText();
		            pWriter.println(text_to_save); 
		    		if (rdbtnTorqueSensor.isSelected()){ 
			            text_to_save = "#define TORQUESENSOR";
			            pWriter.println(text_to_save); 		                
		    		}
		    		if (rdbtnThrottlePas.isSelected()){ 
			            text_to_save = "#define THROTTLEANDPAS";
			            pWriter.println(text_to_save); 		                
		    		}
		    		if (rdbtnThrottle.isSelected()){ 
			            text_to_save = "#define THROTTLE";
			            pWriter.println(text_to_save); 		                
		    		}
		            pWriter.println("\r\n#endif /* CONFIG_H_ */"); 
		            
		            
		        } catch (IOException ioe) { 
		            ioe.printStackTrace(); 
		        } finally { 
		            if (pWriter != null){ 
		                pWriter.flush(); 
		                pWriter.close(); 
		            } 
			}
		        try {
					Process process = Runtime.getRuntime().exec("cmd /c start Start_Compiling");
				} catch (IOException e1) {
					txtThrottlemin.setText("Error");
					e1.printStackTrace();
				}
			}
		});
		btnWriteConfiguration.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnWriteConfiguration.setForeground(Color.BLUE);
		btnWriteConfiguration.setBounds(259, 25, 167, 58);
		contentPane.add(btnWriteConfiguration);
		

		

	}
}
