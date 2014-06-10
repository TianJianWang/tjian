package com.tianjian.dao;

import java.util.ArrayList;


import java.util.HashMap;
import java.util.Map;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.model.BigServiceType;
import com.tianjian.model.BigTypeShortService;
import com.tianjian.model.DetailService;
import com.tianjian.model.LinkType;
import com.tianjian.model.Service;
import com.tianjian.model.ServiceDisplay;
import com.tianjian.model.ShortService;
import com.tianjian.model.SmallServiceType;
import com.tianjian.model.Type;
import com.tianjian.util.HibernateSessionFactory;

public class ServiceDao {

	Session session;

	public int addService(Service service) {
		int n = 1;// 代表添加成功
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			session.save(service);
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			n = 0;// 代表添加失败
		} finally {
			System.out.println("0123");
			HibernateSessionFactory.closeSession();
			return n;
		}
		
	}

	public int addServiceType(Type type) {
		int n = 1;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();

			session.save(type);

			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			n = 0;
		} finally {
			System.out.println("1111111111111111111111111");
			HibernateSessionFactory.closeSession();
			return n;
		}
	}

	public ArrayList queryBigServiceType() {
		ArrayList<Type> typelist = null;
		HashMap<BigServiceType, ArrayList<SmallServiceType>> typemap = new HashMap<BigServiceType, ArrayList<SmallServiceType>>();
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			String hql = null;
			Query query = null;

			hql = "from Type where type_leval=?";
			query = session.createQuery(hql);
			query.setInteger(0, 1);
			typelist = (ArrayList<Type>) query.list();
			tran.commit();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();

			return typelist;

		}
	}

	public HashMap<BigServiceType, ArrayList<SmallServiceType>> querySmallServiceType() {
		HashMap<BigServiceType, ArrayList<SmallServiceType>> typemap = new HashMap<BigServiceType, ArrayList<SmallServiceType>>();
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			Query query = null;

			String hql1 = "select new com.tianjian.model.BigServiceType(big.type_id,big.type_name) from Type big where big.type_up_id=?";
			String hql2 = "select new com.tianjian.model.SmallServiceType(small.type_id,small.type_name)from Type small where small.type_up_id=?";
			query = session.createQuery(hql1);
			query.setInteger(0, 0);
			ArrayList<BigServiceType> bigTypelist = (ArrayList<BigServiceType>) query
					.list();
			for (BigServiceType bigtype : bigTypelist) {
				query = session.createQuery(hql2);
				query.setInteger(0, bigtype.getBigtype_id());

				ArrayList<SmallServiceType> smallTypelist = (ArrayList<SmallServiceType>) query
						.list();
				typemap.put(bigtype, smallTypelist);

			}

			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();

			return typemap;

		}
	}

	@SuppressWarnings({ "finally", "unchecked" })
	public ArrayList<ShortService> queryShortService(int nowPage) {
		ArrayList<ShortService> list = null;

		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			Query query = session
					.createQuery("select new com.tianjian.model.ShortService(short.ser_id,short.com_name,short.score,short.short_info,short.com_url,short.com_picture)from Service short");
			query.setFirstResult((nowPage - 1) * 12);
			query.setMaxResults(12);
			list = (ArrayList<ShortService>) query.list();
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
			return list;
		}

	}

	public BigTypeShortService queryBigTypeShortService(int nowPage, int type_id) {
		ArrayList<ShortService> list = null;
		ArrayList<SmallServiceType> smallTypelist = null;
		BigTypeShortService bigTypeShortService = null;
		Query query = null;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			String hql = "select type_name from Type where type_id=?";
			String hql1 = "select new com.tianjian.model.SmallServiceType(small.type_id,small.type_name)from Type small where small.type_up_id=?";
			String hql2 = "select new com.tianjian.model.ShortService(short.ser_id,short.com_name,short.score,short.short_info,short.com_url,short.com_picture)from Service short where short.ser_type in(select ty.type_id from Type ty where ty.type_up_id=? )";
			query = session.createQuery(hql);
			query.setInteger(0, type_id);
			List bigtypename = query.list();
			String bigtype_name = (String) bigtypename.get(0);
			query = session.createQuery(hql1);
			query.setInteger(0, type_id);
			smallTypelist = (ArrayList<SmallServiceType>) query.list();
			query = session.createQuery(hql2);
			query.setInteger(0, type_id);
			query.setFirstResult((nowPage - 1) * 30);
			query.setMaxResults(30);
			list = (ArrayList<ShortService>) query.list();
			bigTypeShortService = new BigTypeShortService(bigtype_name, list,
					smallTypelist);
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
			return bigTypeShortService;
		}

	}

	public ArrayList<ServiceDisplay> queryFrontBigTypeDisplayShortService() {
		ArrayList<BigServiceType> bigTypelist = null;
		ArrayList<SmallServiceType> smallTypelist = null;
		ArrayList<ShortService> servicelist = null;
		ServiceDisplay serviceDisplay = null;
		ArrayList<ServiceDisplay> serdisPlaylist = new ArrayList<ServiceDisplay>();
		Query query = null;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			String hql1 = "select new com.tianjian.model.BigServiceType(big.type_id,big.type_name) from Type big where big.type_up_id=?";
			String hql2 = "select new com.tianjian.model.SmallServiceType(small.type_id,small.type_name)from Type small where small.type_up_id=?";
			String hql3 = "select new com.tianjian.model.ShortService(short.ser_id,short.com_name,short.score,short.short_info,short.com_url,short.com_picture)from Service short where short.ser_type in(select ty.type_id from Type ty where ty.type_up_id=? )";
			query = session.createQuery(hql1);
			query.setInteger(0, 0);
			bigTypelist = (ArrayList<BigServiceType>) query.list();
			for (BigServiceType bigtype : bigTypelist) {
				query = session.createQuery(hql2);
				query.setInteger(0, bigtype.getBigtype_id());
				query.setFirstResult(0);
				query.setMaxResults(5);
				smallTypelist = (ArrayList<SmallServiceType>) query.list();
				query = session.createQuery(hql3);

				query.setInteger(0, bigtype.getBigtype_id());
				query.setFirstResult(0);
				query.setMaxResults(5);
				servicelist = (ArrayList<ShortService>) query.list();
				serviceDisplay = new ServiceDisplay(bigtype, smallTypelist,
						servicelist);
				serdisPlaylist.add(serviceDisplay);
			}

			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
			return serdisPlaylist;
		}

	}

	public LinkType queryBackType() {
		ArrayList<BigServiceType> bigTypelist = null;
		ArrayList<SmallServiceType> smallTypelist = null;
		Map<Integer, ArrayList<SmallServiceType>> typemap = new HashMap<Integer, ArrayList<SmallServiceType>>();
		LinkType linktype = null;
		Query query = null;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			String hql1 = "select new com.tianjian.model.BigServiceType(big.type_id,big.type_name) from Type big where big.type_up_id=?";
			String hql2 = "select new com.tianjian.model.SmallServiceType(small.type_id,small.type_name)from Type small where small.type_up_id=?";
			query = session.createQuery(hql1);
			query.setInteger(0, 0);
			bigTypelist = (ArrayList<BigServiceType>) query.list();
			for (BigServiceType bigtype : bigTypelist) {
				query = session.createQuery(hql2);
				query.setInteger(0, bigtype.getBigtype_id());

				smallTypelist = (ArrayList<SmallServiceType>) query.list();
				typemap.put(bigtype.getBigtype_id(), smallTypelist);

			}
			linktype = new LinkType(bigTypelist, typemap);
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
			return linktype;
		}

	}

	public ArrayList<ShortService> querySmallTypeShortService(int nowPage,
			int type_id) {
		ArrayList<ShortService> list = null;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			Query query = session
					.createQuery("select new com.tianjian.model.ShortService(short.ser_id,short.com_name,short.score,short.short_info,short.com_url,short.com_picture,type.type_name)from Service short inner join short.ser_type type where short.ser_type=? ");
			query.setInteger(0, type_id);
			query.setFirstResult((nowPage - 1) * 30);
			query.setMaxResults(30);
			list = (ArrayList<ShortService>) query.list();
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			HibernateSessionFactory.closeSession();
			return list;
		}

	}

	public Service queryDetailService(int ser_id) {
		Service service = null;
		try {
			session = HibernateSessionFactory.getsSession();

			Transaction tran = session.beginTransaction();
			tran.begin();
			String hql = "from Service ser where ser.ser_id=?";
			Query query = session.createQuery(hql);
			query.setInteger(0, ser_id);
			List list = query.list();
			tran.commit();
			service = (Service) list.get(0);
			service.getSer_type().getType_name();// 创建type对象,避免延迟加载
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
			return service;
		}
	}

	public DetailService queryFrontDetailService(int ser_id) {
		Service service = null;
		Query query = null;
		ArrayList<Service> list = null;
		ArrayList<ShortService> shortServiceList = null;
		DetailService detailservice = null;
		try {
			session = HibernateSessionFactory.getsSession();

			Transaction tran = session.beginTransaction();
			tran.begin();
			String hql = "from Service ser where ser.ser_id=?";
			String hql2 = "select new com.tianjian.model.ShortService(short.ser_id,short.com_name,short.score,short.short_info,short.com_url,short.com_picture,type.type_name)from Service short inner join short.ser_type type where short.ser_type=? and short.ser_id!=?";
//			query = session.createQuery(hql);
//			query.setInteger(0, ser_id);
//			list = (ArrayList<Service>) query.list();
//			service = (Service) list.get(0);
//
			service=(Service) session.load(Service.class, ser_id);
	service.getSer_type().getType_name();// 创建type对象,避免延迟加载
			query = session.createQuery(hql2);// 查询同类型的概要服务
			query.setInteger(0, service.getSer_type().getType_id());
			query.setInteger(1, ser_id);
			query.setFirstResult(0);
			query.setMaxResults(8);
			shortServiceList = (ArrayList<ShortService>) query.list();
			detailservice = new DetailService(service, shortServiceList);
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
			return detailservice;
		}
	}

	public int delService(int ser_id) {
		int n = 0;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			Query query = session
					.createQuery("delete from Service service where service.ser_id=?");
			query.setInteger(0, ser_id);
			n = query.executeUpdate();
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();

			return n;
		}

	}

	public int alterService(Service service) {
		int n = 1;
		if (delService(service.getSer_id()) != 0) {
			n = addService(service);
		}
		return n;
	}

	public int queryTotalCount() {
		int n = 0;
		try {
			session = HibernateSessionFactory.getsSession();
			Transaction tran = session.beginTransaction();
			tran.begin();
			Query query = session.createQuery("select count(*) from Service ");
			List list = query.list();

			n = Integer.parseInt(list.get(0).toString());
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();

			return n;
		}
	}

}
