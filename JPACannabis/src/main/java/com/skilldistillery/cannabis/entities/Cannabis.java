package com.skilldistillery.cannabis.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cannabis {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String name;

	
	private String strain;

	@Column(name = "thc_percent")
	private Double thcPercent;

	@Column(name = "cbd_percent")
	private Double cbdPercent;

	private String effects;

	@Column(name = "common_usage")
	private String commonUsage;

	private String origin;

	private String lineage;

	private String description;
	
	public Cannabis() {}

	public Cannabis(String name, String strain, double thc, double cbd, String effects, String desc) {
		this.name  =name;
		this.strain=strain;
		this.thcPercent =thc;
		this.cbdPercent=cbd;
		this.effects=effects;
		this.description=desc;
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public String getStrain() {
		return strain;
	}

	public void setStrain(String strain) {
		this.strain = strain;
	}

	public Double getThcPercent() {
		return thcPercent;
	}

	public void setThcPercent(Double thcPercent) {
		this.thcPercent = thcPercent;
	}

	public Double getCbdPercent() {
		return cbdPercent;
	}

	public void setCbdPercent(Double cbdPercent) {
		this.cbdPercent = cbdPercent;
	}

	public String getEffects() {
		return effects;
	}

	public void setEffects(String effects) {
		this.effects = effects;
	}

	public String getCommonUsage() {
		return commonUsage;
	}

	public void setCommonUsage(String commonUsage) {
		this.commonUsage = commonUsage;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getLineage() {
		return lineage;
	}

	public void setLineage(String lineage) {
		this.lineage = lineage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Cannabis [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", strain=");
		builder.append(strain);
		builder.append(", thcPercent=");
		builder.append(thcPercent);
		builder.append(", cbdPercent=");
		builder.append(cbdPercent);
		builder.append(", effects=");
		builder.append(effects);
		builder.append(", commonUsage=");
		builder.append(commonUsage);
		builder.append(", origin=");
		builder.append(origin);
		builder.append(", lineage=");
		builder.append(lineage);
		builder.append(", description=");
		builder.append(description);
		builder.append("]");
		return builder.toString();
	}

}
