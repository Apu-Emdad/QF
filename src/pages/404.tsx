/* eslint-disable check-file/filename-naming-convention */

import { useEffect } from 'react';
import { useRouter } from 'next/dist/client/router';

import styles from 'app/styles/Custom404.module.css';

const Custom404 = () => {
  const router = useRouter();

  useEffect(() => {
    setTimeout(() => {
      router.back();
    }, 8000); // 8 seconds
  }, [router]);

  return (
    <div className={styles.container}>
      <h1 className={styles.title}>404</h1>
      <h5>Page Not Foundd</h5>
      <span>ndr</span>
    </div>
  );
};

export default Custom404;